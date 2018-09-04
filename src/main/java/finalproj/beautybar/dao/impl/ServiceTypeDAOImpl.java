package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IServiceTypeDAO;
import finalproj.beautybar.entity.ServiceType;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceTypeDAOImpl extends AbstractDAO<Long,ServiceType> implements IServiceTypeDAO{

    protected static final int COLUMN_SERVICE_TYPE_ID = 1;
    protected static final int COLUMN_NAME = 2;

    private static ServiceTypeDAOImpl serviceTypeDAO = new ServiceTypeDAOImpl();

    private ServiceTypeDAOImpl(){}

    public static final ServiceTypeDAOImpl getServiceTypeDAO() {
        return serviceTypeDAO;
    }

    @Override
    public List<ServiceType> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM, null);
    }

    @Override
    public ServiceType findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDSERVICE_TYPE = ?", new Object[]{id});
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDSERVICE_TYPE = ?";
            System.out.println("Executing " + SQL);
            // prepare statement
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, id);
            statement.executeUpdate();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        } finally {
            close(connection);
        }
    }

    @Override
    public Boolean create(ServiceType entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`name`) VALUES (?)";
            System.out.println("Executing " + SQL + ". ? = " + entity.getName());
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, entity.getName());
            statement.executeUpdate();
            return true;
        } catch (Exception ex){
            ex.printStackTrace();
            return false;
        }finally {
            close(connection);
        }
    }

    @Override
    public ServiceType update(ServiceType entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `name`= ? WHERE `IDSERVICE_TYPE`= ?";
            System.out.println("Executing " + SQL + ". ? = " + entity.getName());
            statement = connection.prepareStatement(SQL);
            statement.setObject(1, entity.getName());
            statement.setObject(2, entity.getId());
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
        return "service_type";
    }

    @Override
    protected List<ServiceType> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<ServiceType> resultList = new ArrayList();
        while (resultSet.next()) {
            ServiceType entity = new ServiceType();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected void populateDto(ServiceType entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_SERVICE_TYPE_ID));
        entity.setName(resultSet.getString(COLUMN_NAME));
    }

    @Override
    protected ServiceType fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            ServiceType entity = new ServiceType();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
