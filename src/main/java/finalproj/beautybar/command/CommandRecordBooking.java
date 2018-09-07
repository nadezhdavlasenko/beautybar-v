package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.RecordBookingService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CommandRecordBooking implements ICommand{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        String time = request.getParameter("time");
        System.out.println(time);
        String master = (String) session.getAttribute("master");
        String selectedDate =  session.getAttribute("date").toString();

        System.out.println(selectedDate);
        Date date = new SimpleDateFormat("EEE MMM dd hh:mm:ss zzzz yyyy").parse(selectedDate);
        System.out.println(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, Integer.parseInt(time));
        Date resultDate = calendar.getTime();
        Timestamp timestamp = new Timestamp(resultDate.getTime());
        System.out.println(timestamp);
        RecordBookingService recordBookingService = RecordBookingService.getRecordBookingService();
        String email = session.getAttribute("user").toString();
        String service = session.getAttribute("service").toString();
        if ( recordBookingService.createBooking(email, timestamp, master, service)) {
            page = Config.getInstance().getProperty(Config.RECORDBOOKING);
        }else page = Config.getInstance().getProperty(Config.ERROR);
        return page;
    }
}
