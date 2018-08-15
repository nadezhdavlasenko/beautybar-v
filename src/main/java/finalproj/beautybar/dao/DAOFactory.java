package finalproj.beautybar.dao;

import finalproj.beautybar.dao.impl.*;
import finalproj.beautybar.entity.Client;

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

    public static IWorkerServiceDAO getWorkerServiceDAO() {
        return WorkerServiceDAOImpl.getWorkerServiceDAO();
    }

    public static IClientDAO getClientDAO() {
        return ClientDAOImpl.getClientDAO();
    }

    public static IFeedbackDAO getFeedbackDAO(){
        return FeedbackDAOImpl.getFeedbackDAO();
    }

    public static IBookingDAO getBookingDAO(){
        return BookingDAOImpl.getBookingDAO();
    }

}
