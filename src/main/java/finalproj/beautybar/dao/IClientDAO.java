package finalproj.beautybar.dao;

import finalproj.beautybar.entity.Client;

import java.sql.SQLException;
import java.util.List;

public interface IClientDAO {

    List<Client> findAll() throws Exception;
    Client findEntityById(Long id) throws Exception;
    Boolean delete(Long id) throws Exception;
    Boolean create(Client entity) throws Exception;
    Client update(Client entity) throws SQLException;

}
