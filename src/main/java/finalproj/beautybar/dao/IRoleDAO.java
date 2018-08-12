package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Role;

import java.util.List;

public interface IRoleDAO {
    List<Role> findAll() throws Exception;
    Role findEntityById(Long id) throws Exception;//сhanged
    Boolean delete(Long id);
    //boolean delete(Role entity);
    Boolean create(Role entity);
    Role update(Role entity);
}
