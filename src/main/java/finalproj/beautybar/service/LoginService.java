package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IClientDAO;
import finalproj.beautybar.entity.Client;
import org.mindrot.jbcrypt.BCrypt;

public class LoginService {

    public boolean authentificate(String login, String password){
        IClientDAO clientDAO = DAOFactory.getClientDAO();
        Client client = null;
        try {
            client = clientDAO.findByEmail(login);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return BCrypt.checkpw(password, client.getPasswordHash());
    }

}
