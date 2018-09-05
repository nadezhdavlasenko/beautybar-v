package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IBookingDAO;
import finalproj.beautybar.dao.ISceduleDAO;
import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.entity.Scedule;

import java.util.ArrayList;
import java.util.List;

public class ChooseDateService {

    public Scedule getSceduleByMasterName(String name) throws Exception {
        Scedule scedule = null;
        List<Scedule> sceduleList = new ArrayList<>();
        ISceduleDAO sceduleDAO = DAOFactory.getSceduleDAO();
        sceduleDAO.findAll().stream().filter((p)-> p.getWorker().getName().equals(name)).forEach(sceduleList::add);
        scedule = sceduleList.get(0);
        return scedule;
    }

    public Scedule getFreeDatesByMasterName(String name) throws Exception {
        Scedule scedule = null;
        List<Booking> bookingList = new ArrayList<>();
        IBookingDAO bookingDAO = DAOFactory.getBookingDAO();

        bookingDAO.findAll().stream().filter((p)-> p.getWorkerService().getWorker().getName().equals(name)).forEach(bookingList::add);
        return scedule;
    }
}
