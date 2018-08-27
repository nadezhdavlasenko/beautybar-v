package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.entity.Client;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClientDAOImpl extends AbstractDAO<Integer,Client> implements IClientDAO{

    protected static final int COLUMN_CLIENTID = 1;
    protected static final int COLUMN_NAME = 2;
    protected static final int COLUMN_EMAIL = 3;
    protected static final int COLUMN_PHONE = 4;
    protected static final int COLUMN_PASSWORD_HASH = 5;
    protected static final int COLUMN_SALT = 6;

    private static ClientDAOImpl clientDAO = new ClientDAOImpl();

    private ClientDAOImpl(){}

    public static ClientDAOImpl getClientDAO(){
        return clientDAO;
    }

    @Override
    public List<Client> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM, null);
    }

    @Override
    public Client findById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDCLIENT = ?", new Object[]{id});
    }

    @Override
    public Client findByEmail(String email) throws Exception {
        return findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE EMAIL = ?", new Object[]{email});
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDCLIENT = ?";
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, id);
            statement.executeUpdate();
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }
        finally {
            close(connection);
        }
    }

    @Override
    public Boolean create(Client entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`name`, `email`, `phone`, `password_hash`, `salt`) VALUES (?, ?, ?, ?, ?, ?)";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{
                    entity.getName(),entity.getEmail(),
                    entity.getPhone(), entity.getPasswordHash(),
                    entity.getSalt()};
            statement.executeUpdate();
            setParams(statement,sqlParams);
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }finally {
            close(connection);
        }
    }

    @Override
    public Client update(Client entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `name`= ?, `email`= ?, `phone`, `password_hash`= ?, `salt`= ? WHERE `idCLIENT`= ?";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{
                    entity.getName(),entity.getEmail(),
                    entity.getPhone(), entity.getPasswordHash(),
                    entity.getSalt(), entity.getId()};
            setParams(statement,sqlParams);
            statement.executeUpdate();
            return entity;
        } catch (Exception ex){
            ex.printStackTrace();
        }finally {
            close(connection);
        }
        return null;
    }

    @Override
    public String getTableName() {
        return "CLIENT";
    }

    @Override
    protected List<Client> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Client> resultList = new ArrayList();
        while (resultSet.next()) {
            Client entity = new Client();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected void populateDto(Client entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_CLIENTID));
        entity.setName(resultSet.getString(COLUMN_NAME));
        entity.setEmail(resultSet.getString(COLUMN_EMAIL));
        entity.setPhone(resultSet.getString(COLUMN_PHONE));
        entity.setPasswordHash(resultSet.getString(COLUMN_PASSWORD_HASH));
        entity.setSalt(resultSet.getString(COLUMN_SALT));
    }

    @Override
    protected Client fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Client entity = new Client();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
