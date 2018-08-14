package finalproj.beautybar.dao;

import finalproj.beautybar.dao.impl.RoleDAOImpl;

public class DAOFactory {
    public static IRoleDAO getRoleDAO(){
        return RoleDAOImpl.getRoleDAO();
    }
}
