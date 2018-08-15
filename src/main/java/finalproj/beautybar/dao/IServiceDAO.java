package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Service;

import java.sql.SQLException;
import java.util.List;

public interface IServiceDAO {

    List<Service> findAll() throws Exception;
    Service findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Service entity) throws Exception;
    Service update(Service entity) throws SQLException;

}
