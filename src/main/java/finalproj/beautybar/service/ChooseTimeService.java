package finalproj.beautybar.service;

import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.entity.Scedule;

import java.sql.Time;
import java.util.*;
import java.util.stream.Collectors;


public class ChooseTimeService {

    private static final ChooseTimeService CHOOSE_TIME_SERVICE = new ChooseTimeService();

    private ChooseTimeService() {
    }

    public static ChooseTimeService getChooseTimeService() {
        return CHOOSE_TIME_SERVICE;
    }

    public List<Integer> getFreeTimes(String name, Date date) throws Exception {
        List<Integer> freeHours = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        List<Time> startAndEnd = getTimesByMaster(name).get(calendar.get(Calendar.DAY_OF_WEEK));
        List<Booking> bookingList = getAllBookingsByMasterAndDate(name, date);

        calendar.setTime(startAndEnd.get(0));
        int startHour = calendar.get(Calendar.HOUR_OF_DAY);
        calendar.setTime(startAndEnd.get(1));
        int endHour = calendar.get(Calendar.HOUR_OF_DAY);
        for (int i = startHour; i < endHour; i++) {
            List<Integer> busyHours = bookingList.stream().map(p -> {
                calendar.setTime(p.getTimestamp());
                return calendar.get(Calendar.HOUR_OF_DAY);
            }).collect(Collectors.toList());
            if (!busyHours.contains(i)) {
                freeHours.add(i);
            }

        }

        return freeHours;
    }

    public List<Booking> getAllBookingsByMasterAndDate(String name, Date date) throws Exception {
        List<Booking> list = new ArrayList<>();
        ChooseDateService chooseDateService = ChooseDateService.getChooseDateService();
        Calendar calendar = Calendar.getInstance();
        chooseDateService.getAllBookingsByMasterAfterCurrentCurrentDate(name).stream()
                .filter((p) -> {
                    calendar.setTime(p.getTimestamp());
                    calendar.set(Calendar.HOUR_OF_DAY, 0);
                    calendar.set(Calendar.MINUTE, 0);
                    calendar.set(Calendar.SECOND, 0);
                    calendar.set(Calendar.MILLISECOND, 0);
                    return calendar.getTime().equals(date);
                })
                .forEach(list::add);

        return list;
    }

    public List<List<Time>> getTimesByMaster(String name) throws Exception {
        List<List<Time>> list = new ArrayList<>();
        ChooseDateService chooseDateService = ChooseDateService.getChooseDateService();
        Scedule scedule = chooseDateService.getSceduleByMasterName(name);

        list.add(0, null);
        list.add(1, Arrays.asList(scedule.getStartSun(), scedule.getEndSun()));
        list.add(2, Arrays.asList(scedule.getStartMon(), scedule.getEndMon()));
        list.add(3, Arrays.asList(scedule.getStartTue(), scedule.getEndTue()));
        list.add(4, Arrays.asList(scedule.getStartWed(), scedule.getEndWed()));
        list.add(5, Arrays.asList(scedule.getStartThu(), scedule.getEndThu()));
        list.add(6, Arrays.asList(scedule.getStartFri(), scedule.getEndFri()));
        list.add(7, Arrays.asList(scedule.getStartSat(), scedule.getEndSat()));

        return list;
    }
}
