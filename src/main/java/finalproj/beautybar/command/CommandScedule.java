package finalproj.beautybar.command;

import finalproj.beautybar.entity.Booking;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Parameter;
import finalproj.beautybar.service.ChooseDateService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class CommandScedule implements ICommand{
    private static CommandScedule instance;
    private CommandScedule(){}

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        String masterName = request.getParameter(Parameter.MASTER.toString());
        session.setAttribute(Parameter.MASTER.toString(), masterName);
        List<Booking> bookingList = ChooseDateService.getChooseDateService().getAllBookingsByMasterAfterCurrentDate(masterName);
        session.setAttribute(Parameter.BOOKINGS.toString(), bookingList);
        page = Config.getInstance().getProperty(Config.SCEDULE);
        return page;
    }

    public static CommandScedule getInstance() {
        if (instance == null){
            instance = new CommandScedule();
        }
        return instance;
    }
}
