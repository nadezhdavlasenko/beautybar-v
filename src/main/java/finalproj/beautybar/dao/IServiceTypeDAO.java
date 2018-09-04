package finalproj.beautybar.dao;

import finalproj.beautybar.entity.ServiceType;

import java.sql.SQLException;
import java.util.List;

public interface IServiceTypeDAO {

    List<ServiceType> findAll() throws Exception;
    ServiceType findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(ServiceType entity) throws Exception;
    ServiceType update(ServiceType entity) throws SQLException;
}
