package finalproj.beautybar.dao.impl;

import finalproj.beautybar.dao.AbstractDAO;
import finalproj.beautybar.dao.IRoleDAO;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.pool.ConnectionPool;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RoleDAOImpl extends AbstractDAO<Long, Role> implements IRoleDAO {

    protected static final int COLUMN_ROLEID = 1;
    protected static final int COLUMN_TYPENAME = 2;

    @Override
    public Role findEntityById(Long id) throws Exception {
        return  findOneByDynamicSelect(SQL_SELECT + " WHERE IDROLE = ?", new Object[]{id}); }

    @Override
    public Boolean delete(Long id) {
        throw new UnsupportedOperationException();
    }

//    @Override
//    public boolean delete(Role entity) {
//        throw new UnsupportedOperationException();
//    }

    @Override
    public Boolean create(Role entity) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Role update(Role entity) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getTableName() {
        return "role";
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
