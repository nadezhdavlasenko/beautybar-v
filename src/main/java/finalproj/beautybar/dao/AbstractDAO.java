package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Entity;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractDAO <K, T extends Entity> {

   // Connection connection;
    protected final String SQL_SELECT = "SELECT * FROM " + getTableName() + "";

   // protected WrapperConnector connector;
    public List<T> findAll() throws Exception {
        return findByDynamicSelect(SQL_SELECT, null);
    }
    public abstract T findEntityById(K id) throws Exception;
    public abstract Boolean delete(K id);
    //public abstract boolean delete(T entity);
    public abstract Boolean create(T entity);
    public abstract T update(T entity);

    public void close(Statement st) {
        try {
            if (st != null) {
                st.close();
            }
        } catch (SQLException e) {
            // лог о невозможности закрытия Statement
        }
    }

    public void close(Connection connection) {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
// генерация исключения, т.к. нарушается работа пула
        }
    }

//    public void close() {
//        connector.closeConnection();
//    }
//    protected void closeStatement(Statement statement) {
//        connector.closeStatement(statement);
//    }

    public abstract String getTableName();

    public List<T> findByDynamicSelect(String sql, Object[] sqlParams) throws Exception {
        // declare variables
        List<T> entities = new ArrayList<>();
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
            close(statement);
        }

    }

    public T findOneByDynamicSelect(String sql, Object[] sqlParams) throws Exception {
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
            close(statement);
        }

    }
    protected abstract List<T> fetchMultiResults(ResultSet resultSet) throws SQLException;
    protected abstract void populateDto(T entity, ResultSet resultSet) throws SQLException;
    protected abstract T fetchSingleResult(ResultSet resultSet) throws SQLException;


    }
