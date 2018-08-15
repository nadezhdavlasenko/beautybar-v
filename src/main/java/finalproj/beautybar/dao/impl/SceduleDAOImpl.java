package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.ISceduleDAO;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.entity.Scedule;
import finalproj.beautybar.entity.Worker;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SceduleDAOImpl extends AbstractDAO<Long, Scedule> implements ISceduleDAO {

    private static final String SQL_INNER_JOIN = " INNER JOIN worker ON scedule.idmaster=worker.idworker" +
            " INNER JOIN role ON worker.idrole = role.idrole;";

    protected static final int COLUMN_SCEDULEID = 1;
    protected static final int COLUMN_MASTERID = 2;
    protected static final int COLUMN_START_MON = 3;
    protected static final int COLUMN_END_MON = 4;
    protected static final int COLUMN_START_TUE = 5;
    protected static final int COLUMN_END_TUE = 6;
    protected static final int COLUMN_START_WED = 7;
    protected static final int COLUMN_END_WED = 8;
    protected static final int COLUMN_START_THU = 9;
    protected static final int COLUMN_END_THU = 10;
    protected static final int COLUMN_START_FRI = 11;
    protected static final int COLUMN_END_FRI = 12;
    protected static final int COLUMN_START_SAT = 13;
    protected static final int COLUMN_END_SAT = 14;
    protected static final int COLUMN_START_SUN = 15;
    protected static final int COLUMN_END_SUN = 16;
    protected static final int COLUMN_WORKER_WORKERID = 17;
    protected static final int COLUMN_WORKER_ROLEID = 18;
    protected static final int COLUMN_WORKER_NAME = 19;
    protected static final int COLUMN_WORKER_EMAIL = 20;
    protected static final int COLUMN_WORKER_PHONE = 21;
    protected static final int COLUMN_WORKER_PASSWORD_HASH = 22;
    protected static final int COLUMN_WORKER_SALT = 23;
    protected static final int COLUMN_ROLE_IDROLE = 24;
    protected static final int COLUMN_ROLE_NAME = 25;

    private static SceduleDAOImpl sceduleDAO = new SceduleDAOImpl();

    private SceduleDAOImpl(){}

    public static SceduleDAOImpl getSceduleDAO(){
        return sceduleDAO;
    }

    @Override
    public List<Scedule> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT_FROM + SQL_INNER_JOIN, null);
    }

    @Override
    public Scedule findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT_FROM + " WHERE IDSCEDULE = ?" + SQL_INNER_JOIN, new Object[]{id});

    }

    @Override
    public Boolean delete(Long id) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_DELETE + " WHERE IDSCEDULE = ?";
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
    public Boolean create(Scedule entity) throws Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_INSERT + " (`idmaster`, `start_mon`, `end_mon`, `start_tue`, " +
                    "`end_tue`, `start_wed`, `end_wed`, `start_thu`, `end_thu`, `start_fri`, `end_fri`," +
                    " `start_sat`, `end_sat`, `start_sun`, `end_sun`) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            System.out.println("Executing " + SQL);
            Object[] sqlParams = new Object[]{entity.getWorker().getId(),
                    entity.getStartMon(), entity.getEndMon(),
                    entity.getStartTue(), entity.getEndTue(),
                    entity.getStartWed(), entity.getEndWed(),
                    entity.getStartThu(), entity.getEndThu(),
                    entity.getStartFri(), entity.getEndFri(),
                    entity.getStartSat(), entity.getEndSat(),
                    entity.getStartSun(), entity.getEndSun()};
            statement = connection.prepareStatement(SQL);
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
    public Scedule update(Scedule entity) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = ConnectionPool.getConnection();
            final String SQL = SQL_UPDATE + " SET `idmaster`= ?, `start_mon`= ?, `end_mon`= ?, " +
                    "`start_tue`= ?, `end_tue`= ?, `start_wed`= ?, `end_wed`= ?, `start_thu`= ?, " +
                    "`end_thu`= ?, `start_fri`= ?, `end_fri`= ?, `start_sat`= ?, `end_sat`= ?," +
                    " `start_sun`= ?, `end_sun`= ? WHERE `idscedule`= ?";
            System.out.println("Executing " + SQL);
            statement = connection.prepareStatement(SQL);
            Object[] sqlParams = new Object[]{entity.getWorker(),
                    entity.getStartMon(), entity.getEndMon(),
                    entity.getStartTue(), entity.getEndTue(),
                    entity.getStartWed(), entity.getEndWed(),
                    entity.getStartThu(), entity.getEndThu(),
                    entity.getStartFri(), entity.getEndFri(),
                    entity.getStartSat(), entity.getEndSat(),
                    entity.getStartSun(), entity.getEndSun(),
                    entity.getId()};
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
        return "scedule";
    }

    @Override
    protected List<Scedule> fetchMultiResults(ResultSet resultSet) throws SQLException {
        List<Scedule> resultList = new ArrayList();
        while (resultSet.next()) {
            Scedule entity = new Scedule();
            populateDto(entity, resultSet);
            resultList.add(entity);
        }
        return resultList;
    }

    @Override
    protected void populateDto(Scedule entity, ResultSet resultSet) throws SQLException {
        Worker worker = new Worker();
        worker.setId(resultSet.getLong(COLUMN_WORKER_WORKERID));
        worker.setRole(new Role(resultSet.getLong(COLUMN_ROLE_IDROLE),resultSet.getString(COLUMN_ROLE_NAME)));
        worker.setName(resultSet.getString(COLUMN_WORKER_NAME));
        worker.setEmail(resultSet.getString(COLUMN_WORKER_EMAIL));
        worker.setPhone(resultSet.getString(COLUMN_WORKER_PHONE));
        worker.setPasswordHash(resultSet.getString(COLUMN_WORKER_PASSWORD_HASH));
        worker.setSalt(resultSet.getString(COLUMN_WORKER_SALT));
        worker.setId(resultSet.getLong(COLUMN_WORKER_WORKERID));

        entity.setWorker(worker);
        entity.setStartMon(resultSet.getTime(COLUMN_START_MON));
        entity.setEndMon(resultSet.getTime(COLUMN_END_MON));
        entity.setStartMon(resultSet.getTime(COLUMN_START_TUE));
        entity.setEndMon(resultSet.getTime(COLUMN_END_TUE));
        entity.setStartMon(resultSet.getTime(COLUMN_START_WED));
        entity.setEndMon(resultSet.getTime(COLUMN_END_WED));
        entity.setStartMon(resultSet.getTime(COLUMN_START_THU));
        entity.setEndMon(resultSet.getTime(COLUMN_END_THU));
        entity.setStartMon(resultSet.getTime(COLUMN_START_FRI));
        entity.setEndMon(resultSet.getTime(COLUMN_END_FRI));
        entity.setStartMon(resultSet.getTime(COLUMN_START_SAT));
        entity.setEndMon(resultSet.getTime(COLUMN_END_SAT));
        entity.setStartMon(resultSet.getTime(COLUMN_START_SUN));
        entity.setEndMon(resultSet.getTime(COLUMN_END_SUN));
    }

    @Override
    protected Scedule fetchSingleResult(ResultSet resultSet) throws SQLException {
        if (resultSet.next()) {
            Scedule entity = new Scedule();
            populateDto(entity, resultSet);
            return entity;
        } else {
            return null;
        }
    }
}
