package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Feedback;

import java.sql.SQLException;
import java.util.List;

public interface IFeedbackDAO {

    List<Feedback> findAll() throws Exception;
    Feedback findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Feedback entity) throws Exception;
    Feedback update(Feedback entity) throws SQLException;

}
