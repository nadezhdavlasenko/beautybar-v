package finalproj.beautybar.service;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IBookingDAO;
import finalproj.beautybar.dao.ISceduleDAO;
import finalproj.beautybar.dao.IWorkerDAO;
import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.entity.Scedule;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.*;

import static java.util.stream.Collectors.groupingBy;
import static java.util.stream.Collectors.summingInt;

public class ChooseDateService {

    private static final ChooseDateService CHOOSE_DATE_SERVICE = new ChooseDateService();

    private ChooseDateService() {
    }

    ;

    public static ChooseDateService getChooseDateService() {
        return CHOOSE_DATE_SERVICE;
    }

    public Scedule getSceduleByMasterName(String name) throws Exception {
        Scedule scedule = null;
        List<Scedule> sceduleList = new ArrayList<>();
        ISceduleDAO sceduleDAO = DAOFactory.getSceduleDAO();
        sceduleDAO.findAll().stream().filter((p) -> p.getWorker().getName().equals(name)).forEach(sceduleList::add);
        scedule = sceduleList.get(0);
        return scedule;
    }

    public List<Integer> getDisabledDaysByMasterName(String name) throws Exception {
        List<Integer> list = new ArrayList<>();
        Scedule scedule = getSceduleByMasterName(name);
        System.out.println(scedule);

        if (scedule.getStartMon() == null) list.add(1);
        if (scedule.getStartTue() == null) list.add(2);
        if (scedule.getStartWed() == null) list.add(3);
        if (scedule.getStartThu() == null) list.add(4);
        if (scedule.getStartFri() == null) list.add(5);
        if (scedule.getStartSat() == null) list.add(6);
        if (scedule.getStartSun() == null) list.add(0);

        Integer[] array = new Integer[list.size()];
        for (int i = 0; i < array.length; i++) {
            array[i] = list.get(i);
        }
        System.out.println(Arrays.toString(array));
        return list;
    }

    public List<Date> getDisabledDatesByMasterName(String name) throws Exception {
        List<Date> dates = new ArrayList<>();
        Scedule scedule = getSceduleByMasterName(name);
        System.out.println(scedule);
        List<Booking> bookingList = new ArrayList<>();
        IBookingDAO bookingDAO = DAOFactory.getBookingDAO();
        IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        Calendar calendar = Calendar.getInstance();
        //c.setTime(yourDate);

        List<Booking> allBookings = bookingDAO.findAll();
        allBookings.forEach(System.out::println);
        allBookings.forEach((p)-> System.out.println(workerDAO.findEntityById(p.getWorkerService().getWorker().getId()).getName()));
        allBookings.forEach((p)-> System.out.println(p.getWorkerService().getWorker().getId()));
        allBookings.forEach((p)-> System.out.println(workerDAO.findEntityById(p.getWorkerService().getWorker().getId()).getName().equals(name)));
        allBookings.forEach((p)-> System.out.println(p.getTimestamp() + " = p.getTimestamp()\n"
                + p.getTimestamp().getNanos() + " = p.getTimestamp().getNanos()\n"
                + System.nanoTime() + " = System.nanoTime()\n"+ (p.getTimestamp().after(new Timestamp(new Date().getTime())))));
        bookingDAO.findAll().stream()
                .filter(
                        (p) -> (workerDAO.findEntityById(p.getWorkerService().getWorker().getId()).getName().equals(name))
                        && ((p.getTimestamp().after(new Timestamp(new Date().getTime()))))
                )
                .forEach(bookingList::add);

        Map<Date, Integer> hoursPerDate = bookingList.stream().collect(groupingBy((p)->{

            calendar.setTime(p.getTimestamp());

// Set time fields to zero
            calendar.set(Calendar.HOUR_OF_DAY, 0);
            calendar.set(Calendar.MINUTE, 0);
            calendar.set(Calendar.SECOND, 0);
            calendar.set(Calendar.MILLISECOND, 0);

// Put it back in the Date object
            return calendar.getTime();

            }, summingInt(Booking::getDuration)));
        Map<Integer, Integer> workingHours = new HashMap<>();


        if (scedule.getStartSun() != null) {
            workingHours.put(1, getWorkingHours(scedule.getStartSun(), scedule.getEndSun()));
        }
        if (scedule.getStartMon() != null) {
            workingHours.put(2, getWorkingHours(scedule.getStartMon(), scedule.getEndMon()));
        }
        if (scedule.getStartTue() != null) {
            workingHours.put(3, getWorkingHours(scedule.getStartTue(), scedule.getEndTue()));
        }
        if (scedule.getStartWed() != null) {
            workingHours.put(4, getWorkingHours(scedule.getStartWed(), scedule.getEndWed()));
        }
        if (scedule.getStartThu() != null) {
            workingHours.put(5, getWorkingHours(scedule.getStartThu(), scedule.getEndThu()));
        }
        if (scedule.getStartFri() != null) {
            workingHours.put(6, getWorkingHours(scedule.getStartFri(), scedule.getEndFri()));
        }
        if (scedule.getStartSat() != null) {
            workingHours.put(7, getWorkingHours(scedule.getStartSat(), scedule.getEndSat()));
        }

        hoursPerDate.forEach((k, v) -> {
            System.out.println("k - "+ k + ", v - " + v);
            calendar.setTime(k);
            if ((workingHours.get(calendar.get(Calendar.DAY_OF_WEEK)) - v) < 1) dates.add(k);
        });
        dates.add(new Date());
        return dates;
    }

    private int getWorkingHours(Time startTime, Time endTime) {
        return (int) ((endTime.getTime() - startTime.getTime()) / 3600000);
    }
}
