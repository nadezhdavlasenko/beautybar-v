package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Scedule;

import java.sql.SQLException;
import java.util.List;

public interface ISceduleDAO {

    List<Scedule> findAll() throws Exception;
    Scedule findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Scedule entity) throws Exception;
    Scedule update(Scedule entity) throws SQLException;
}
