package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IRoleDAO;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleDAOImpl implements IRoleDAO {

    protected final String SQL_SELECT = "SELECT * FROM " + getTableName();
    protected final String SQL_DELETE = "DELETE FROM " + getTableName();
    protected final String SQL_INSERT = "INSERT INTO " + getTableName();
    protected final String SQL_UPDATE = "UPDATE " + getTableName();

    protected static final int COLUMN_ROLEID = 1;
    protected static final int COLUMN_TYPENAME = 2;

    private static RoleDAOImpl roleDAO = new RoleDAOImpl();

    private RoleDAOImpl(){}

    public static RoleDAOImpl getRoleDAO(){
        return roleDAO;
    }

    @Override
    public List<Role> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT, null);
    }

    @Override
    public Role findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT + " WHERE IDROLE = ?", new Object[]{id}); }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDROLE = ?";
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, id);
            statement.execute();
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }
        finally {
            if (connection != null){
                connection.close();
            }
        }

    }

//    @Override
//    public boolean delete(Role entity) {
//        throw new UnsupportedOperationException();
//    }

    @Override
    public Boolean create(Role entity) throws Exception{
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`name`) VALUES (?)";
            System.out.println("Executing " + SQL + ". ? = " + entity.getTypeName());
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, entity.getTypeName());
            statement.execute();
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }finally {
            if (connection != null){
                connection.close();
            }
        }
    }

    @Override
    public Role update(Role entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `name`= ? WHERE `idrole`= ?";
            System.out.println("Executing " + SQL + ". ? = " + entity.getTypeName());
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, entity.getTypeName());
            statement.setObject(2, entity.getId());
            statement.executeUpdate();
            return entity;
        } catch (Exception ex){
            ex.printStackTrace();
        }finally {
            if (connection != null){
                connection.close();
            }
        }
        return null;
    }

    public String getTableName() {
        return "role";
    }

    public List<Role> findByDynamicSelect(String sql, Object[] sqlParams) throws Exception {
        // declare variables
        List<Role> entities = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = sql;
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            // bind parameters
            for (int i = 0; sqlParams != null && i < sqlParams.length; i++) {
                statement.setObject(i + 1, sqlParams[i]);
            }
            resultSet = statement.executeQuery();
            // fetch the results
            return fetchMultiResults(resultSet);
        } catch (Exception ex) {
            //logger.error(ex, ex);
            throw new Exception("Exception: " + ex.getMessage(), ex);
        } finally {
            connection.close();
        }

    }

    public Role findOneByDynamicSelect(String sql, Object[] sqlParams) throws Exception {
        // declare variables
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = sql;
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            // bind parameters
            for (int i = 0; sqlParams != null && i < sqlParams.length; i++) {
                statement.setObject(i + 1, sqlParams[i]);
            }
            resultSet = statement.executeQuery();
            // fetch the results
            return fetchSingleResult(resultSet);
        } catch (Exception ex) {
            //logger.error(ex, ex);
            throw new Exception("Exception: " + ex.getMessage(), ex);
        } finally {
            connection.close();
        }

    }

    protected List<Role> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Role> resultList = new ArrayList();
        while (resultSet.next()) {
            Role entity = new Role();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    protected void populateDto(Role entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_ROLEID));
        entity.setTypeName(resultSet.getString(COLUMN_TYPENAME));
    }

    protected Role fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Role entity = new Role();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }

    }
}
