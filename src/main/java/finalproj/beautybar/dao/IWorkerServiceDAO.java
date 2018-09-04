package finalproj.beautybar.dao;

import finalproj.beautybar.entity.WorkerService;

import java.sql.SQLException;
import java.util.List;

public interface IWorkerServiceDAO {

    List<WorkerService> findAll() throws Exception;
    WorkerService findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(WorkerService entity) throws Exception;
    WorkerService update(WorkerService entity) throws SQLException;

}
