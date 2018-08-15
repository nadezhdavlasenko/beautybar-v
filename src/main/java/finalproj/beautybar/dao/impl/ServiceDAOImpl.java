package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IServiceDAO;
import finalproj.beautybar.entity.Service;
import finalproj.beautybar.entity.ServiceType;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceDAOImpl extends AbstractDAO<Long,Service> implements IServiceDAO{

    protected final String SQL_INNER_JOIN = " INNER JOIN role ON service.idtype=service_type.idtype";

    protected static final int COLUMN_SERVICEID = 1;
    protected static final int COLUMN_NAME = 2;
    protected static final int COLUMN_DURATION = 3;
    protected static final int COLUMN_TYPEID = 4;
    protected static final int COLUMN_SERVICE_TYPE_SERVICE_TYPE_ID = 5;
    protected static final int COLUMN_SERVICE_TYPE_NAME = 6;

    private static ServiceDAOImpl serviceDAO = new ServiceDAOImpl();

    private ServiceDAOImpl(){}

    public static ServiceDAOImpl getServiceDAO(){
        return serviceDAO;
    }


    @Override
    public List<Service> findAll() throws Exception {
        return null;
    }

    @Override
    public Service findEntityById(Long id) throws Exception {
        return null;
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDSERVICE = ?";
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
    public Boolean create(Service entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`name`, `duration`, `idtype`) VALUES (?,?,?)";
            System.out.println("Executing " + SQL + ". ? = " + entity.getName());
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getName(), entity.getDuration(), entity.getServiceType()};
            setParams(statement,sqlParams);
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
    public Service update(Service entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET  `name`= ?, `duration`= ?, " +
                    "`idtype`,  WHERE `IDSERVICE`= ?";
            System.out.println("Executing " + SQL);
            Object[] sqlParams = new Object[]{ entity.getName(), entity.getDuration(), entity.getServiceType(), entity.getId()};
            statement = connection.prepareStatement(SQL);
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
        return "service";
    }

    @Override
    protected List<Service> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Service> resultList = new ArrayList();
        while (resultSet.next()) {
            Service entity = new Service();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected void populateDto(Service entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_SERVICEID));
        entity.setName(resultSet.getString(COLUMN_NAME));
        entity.setDuration(resultSet.getInt(COLUMN_DURATION));
        entity.setServiceType(new ServiceType(resultSet.getLong(COLUMN_SERVICE_TYPE_SERVICE_TYPE_ID),resultSet.getString(COLUMN_SERVICE_TYPE_NAME)));
    }

    @Override
    protected Service fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Service entity = new Service();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
