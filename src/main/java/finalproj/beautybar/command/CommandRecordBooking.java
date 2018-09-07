package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.EmailSender;
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

        String selectedDate =  session.getAttribute("date").toString();
        Date dateFromString = new SimpleDateFormat("EEE MMM dd hh:mm:ss zzzz yyyy").parse(selectedDate);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateFromString);
        String time = request.getParameter("time");
        calendar.set(Calendar.HOUR_OF_DAY, Integer.parseInt(time));
        Date resultDate = calendar.getTime();

        RecordBookingService recordBookingService = RecordBookingService.getRecordBookingService();

        Timestamp timestamp = new Timestamp(resultDate.getTime());
        String email = session.getAttribute("user").toString();
        String master = (String) session.getAttribute("master");
        String service = session.getAttribute("service").toString();

        if (recordBookingService.createBooking(email, timestamp, master, service)) {
            page = Config.getInstance().getProperty(Config.RECORDBOOKING);
            EmailSender emailSender = EmailSender.getInstance();
            emailSender.sendEmail(email,timestamp,master);
        } else {
            page = Config.getInstance().getProperty(Config.ERROR);
        }


        return page;
    }
}
