package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IServiceDAO;
import finalproj.beautybar.dao.IServiceTypeDAO;
import finalproj.beautybar.entity.Service;
import finalproj.beautybar.entity.ServiceType;

import java.util.ArrayList;
import java.util.List;

public class ChooseServiceService {

    private static final ChooseServiceService chooseServiceService = new ChooseServiceService();

    private ChooseServiceService(){}

    public static final ChooseServiceService getChooseServiceService(){
        return chooseServiceService;
    }

    public List<ServiceType> getAllServiceTypes(){
        IServiceTypeDAO serviceTypeDAO = DAOFactory.getServiceTypeDAO();
        List<ServiceType> list = new ArrayList<>();
        try {
            list = serviceTypeDAO.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Service> getAllServices(){
        IServiceDAO serviceDAO = DAOFactory.getServiceDAO();
        List<Service> list = new ArrayList<>();
        try {
            list = serviceDAO.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Service> getServiceIdByName(String name){
        IServiceDAO serviceDAO = DAOFactory.getServiceDAO();
        List<Service> list = new ArrayList<>();
        try {
           // serviceDAO.findEntityById()
//            getAllServices().stream().filter((p)-> p.getName().equals(name)).forEach(list::add);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
