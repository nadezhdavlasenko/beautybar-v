package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IWorkerServiceDAO;
import finalproj.beautybar.entity.Service;
import finalproj.beautybar.entity.Worker;
import finalproj.beautybar.entity.WorkerService;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WorkerServiceDAOImpl extends AbstractDAO<Long,WorkerService> implements IWorkerServiceDAO{

    protected final String SQL_INNER_JOIN = " INNER JOIN worker_service ON worker_service.idworker=worker.idworker" +
            " INNER JOIN role ON worker.idrole=role.idrole" +
            " INNER JOIN service ON worker_service.idservice=service.idservice" +
            " INNER JOIN role ON service.idtype=service_type.idtype";

    protected static final int COLUMN_WORKER_SERVICEID = 1;
    protected static final int COLUMN_WORKERID = 2;
    protected static final int COLUMN_SERVICEID = 3;
    protected static final int COLUMN_PRICE = 4;
//    protected static final int COLUMN_WORKER_WORKERID = 5;
//    protected static final int COLUMN_WORKER_ROLEID = 6;
//    protected static final int COLUMN_WORKER_NAME = 7;
//    protected static final int COLUMN_WORKER_EMAIL = 8;
//    protected static final int COLUMN_WORKER_PHONE = 9;
//    protected static final int COLUMN_WORKER_PASSWORD_HASH = 10;
//    protected static final int COLUMN_WORKER_SALT = 11;
//    protected static final int COLUMN_ROLE_IDROLE = 12;
//    protected static final int COLUMN_ROLE_NAME = 13;
//    protected static final int COLUMN_SERVICE_SERVICEID = 14;
//    protected static final int COLUMN_SERVICE_NAME = 15;
//    protected static final int COLUMN_SERVICE_DURATION = 16;
//    protected static final int COLUMN_SERVICE_TYPEID = 17;
//    protected static final int COLUMN_SERVICE_TYPE_SERVICE_TYPE_ID = 18;
//    protected static final int COLUMN_SERVICE_TYPE_NAME = 19;

    private static WorkerServiceDAOImpl serviceDAO = new WorkerServiceDAOImpl();

    private WorkerServiceDAOImpl(){}

    public static WorkerServiceDAOImpl getWorkerServiceDAO(){
        return serviceDAO;
    }
    
    @Override
    public List<WorkerService> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM, null);
    }

    @Override
    public WorkerService findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDWORKER_SERVICE = ?", new Object[]{id});
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDWORKER_SERVICE = ?";
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
    public Boolean create(WorkerService entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`idworker`, `idservice`, `price`) VALUES (?,?,?)";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getWorker().getId(), entity.getService().getId(), entity.getPrice()};
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
    public WorkerService update(WorkerService entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET  `idworker`= ?, `idservice`= ?, " +
                    "`price`,  WHERE `IDWORKER_SERVICE`= ?";
            System.out.println("Executing " + SQL);
            Object[] sqlParams = new Object[]{ entity.getWorker().getId(), entity.getService().getId(), entity.getPrice(), entity.getId()};
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
        return "worker_service";
    }

    @Override
    protected void populateDto(WorkerService entity, ResultSet resultSet) throws SQLException {
        entity.setId(resultSet.getLong(COLUMN_WORKER_SERVICEID));
        entity.setWorker(new Worker(resultSet.getLong(COLUMN_WORKERID)));
        entity.setService(new Service(resultSet.getLong(COLUMN_SERVICEID)));
        entity.setPrice(resultSet.getBigDecimal(COLUMN_PRICE));
    }

    @Override
    protected List<WorkerService> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<WorkerService> resultList = new ArrayList();
        while (resultSet.next()) {
            WorkerService entity = new WorkerService();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected WorkerService fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            WorkerService entity = new WorkerService();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
