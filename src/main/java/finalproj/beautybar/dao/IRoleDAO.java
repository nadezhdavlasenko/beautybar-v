package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Role;

import java.sql.SQLException;
import java.util.List;

public interface IRoleDAO {

    List<Role> findAll() throws Exception;
    Role findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Role entity) throws Exception;
    Role update(Role entity) throws SQLException;

}
