package finalproj.beautybar.dao;

import finalproj.beautybar.dao.impl.RoleDAOImpl;
import finalproj.beautybar.dao.impl.SceduleDAOImpl;
import finalproj.beautybar.dao.impl.ServiceTypeDAOImple;
import finalproj.beautybar.dao.impl.WorkerDAOImpl;

public class DAOFactory {
    public static IRoleDAO getRoleDAO(){
        return RoleDAOImpl.getRoleDAO();
    }

    public static IWorkerDAO getWorkerDAO(){
        return WorkerDAOImpl.getWorkerDAO();
    }

    public static ISceduleDAO getSceduleDAO(){
        return SceduleDAOImpl.getSceduleDAO();
    }

    public static IServiceTypeDAO getServiceTypeDAO(){
        return ServiceTypeDAOImple.getServiceTypeDAO();
    }
}
