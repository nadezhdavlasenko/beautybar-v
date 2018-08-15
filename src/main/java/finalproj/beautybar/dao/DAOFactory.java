package finalproj.beautybar.dao;

import finalproj.beautybar.dao.impl.*;

public class DAOFactory {

    public static IRoleDAO getRoleDAO() {
        return RoleDAOImpl.getRoleDAO();
    }

    public static IWorkerDAO getWorkerDAO() {
        return WorkerDAOImpl.getWorkerDAO();
    }

    public static ISceduleDAO getSceduleDAO() {
        return SceduleDAOImpl.getSceduleDAO();
    }

    public static IServiceTypeDAO getServiceTypeDAO() {
        return ServiceTypeDAOImpl.getServiceTypeDAO();
    }

    public static IServiceDAO getServiceDAO() {
        return ServiceDAOImpl.getServiceDAO();
    }

}
