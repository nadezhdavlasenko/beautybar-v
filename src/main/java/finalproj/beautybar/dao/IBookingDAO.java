package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Booking;

import java.sql.SQLException;
import java.util.List;

public interface IBookingDAO {

    List<Booking> findAll() throws Exception;
    Booking findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Booking entity) throws Exception;
    Booking update(Booking entity) throws SQLException;

}
