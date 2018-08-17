package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.IBookingDAO;
import finalproj.beautybar.entity.*;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDAOImpl extends AbstractDAO<Long, Booking> implements IBookingDAO {

    protected final String SQL_INNER_JOIN = " INNER JOIN client ON booking.idclient=client.idclient" +
            " INNER JOIN worker_service ON booking.idworker_service=worker_service.idworker_service;";

    protected static final int COLUMN_BOOKINGID = 1;
    protected static final int COLUMN_TIMESTAMP = 2;
    protected static final int COLUMN_DURATION = 3;
    protected static final int COLUMN_CLIENTID = 4;
    protected static final int COLUMN_WORKER_SERVICEID = 5;
    protected static final int COLUMN_CLIENT_CLIENTID = 6;
    protected static final int COLUMN_CLIENT_NAME = 7;
    protected static final int COLUMN_CLIENT_EMAIL = 8;
    protected static final int COLUMN_CLIENT_PHONE = 9;
    protected static final int COLUMN_CLIENT_PASSWORD_HASH = 10;
    protected static final int COLUMN_CLIENT_SALT = 11;
    protected static final int COLUMN_WORKER_SERVICE_WORKER_SERVICEID = 12;
    protected static final int COLUMN_WORKER_SERVICE_WORKERID = 13;
    protected static final int COLUMN_WORKER_SERVICE_SERVICEID = 14;
    protected static final int COLUMN_WORKER_SERVICE_PRICE = 15;

    private static BookingDAOImpl bookingDAO = new BookingDAOImpl();

    private BookingDAOImpl(){}

    public static BookingDAOImpl getBookingDAO(){
        return bookingDAO;
    }

    @Override
    public List<Booking> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN, null);
    }

    @Override
    public Booking findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDBOOKING = ?" + SQL_INNER_JOIN, new Object[]{id});
    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDBOOKING = ?";
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
    public Boolean create(Booking entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`timestamp`, `duration`, `idclient`, `idworker_service`) " +
                    "VALUES (?, ?, ?, ?)";
            System.out.println("Executing " + SQL);
            Object[] sqlParams = new Object[]{entity.getTimestamp(), entity.getDuration(),
                    entity.getClient().getId(), entity.getWorkerService()};
            statement = connection.prepareStatement(SQL);
            setParams(statement, sqlParams);
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
    public Booking update(Booking entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `timestamp`= ?, `duration`= ?, `idclient`= ?, " +
                    "`idworker_service`= ? WHERE `IDBOOKING`= ?";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getTimestamp(), entity.getDuration(),
                    entity.getClient().getId(), entity.getWorkerService(), entity.getId()};
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
        return "booking";
    }

    @Override
    protected void populateDto(Booking entity, ResultSet resultSet) throws SQLException {
        Client client = new Client();
        client.setId(resultSet.getLong(COLUMN_CLIENT_CLIENTID));
        client.setName(resultSet.getString(COLUMN_CLIENT_NAME));
        client.setEmail(resultSet.getString(COLUMN_CLIENT_EMAIL));
        client.setPhone(resultSet.getString(COLUMN_CLIENT_PHONE));
        client.setPasswordHash(resultSet.getString(COLUMN_CLIENT_PASSWORD_HASH));
        client.setSalt(resultSet.getString(COLUMN_CLIENT_SALT));

        WorkerService workerService = new WorkerService();
        workerService.setId(resultSet.getLong(COLUMN_WORKER_SERVICE_WORKER_SERVICEID));
        workerService.setWorker(new Worker(resultSet.getLong(COLUMN_WORKER_SERVICE_WORKERID)));
        workerService.setService(new Service(resultSet.getLong(COLUMN_WORKER_SERVICE_SERVICEID)));
        workerService.setPrice(resultSet.getBigDecimal(COLUMN_WORKER_SERVICE_PRICE));


        entity.setId(resultSet.getLong(COLUMN_BOOKINGID));
        entity.setTimestamp(resultSet.getTimestamp(COLUMN_TIMESTAMP));
        entity.setDuration(resultSet.getInt(COLUMN_DURATION));
        entity.setClient(client);
        entity.setWorkerService(workerService);
    }

    @Override
    protected List<Booking> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Booking> resultList = new ArrayList();
        while (resultSet.next()) {
            Booking entity = new Booking();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected Booking fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Booking entity = new Booking();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
