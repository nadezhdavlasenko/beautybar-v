package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Worker;

import java.sql.SQLException;
import java.util.List;

public interface IWorkerDAO {

    List<Worker> findAll() throws Exception;
    Worker findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Worker entity) throws Exception;
    Worker update(Worker entity) throws SQLException;

}
