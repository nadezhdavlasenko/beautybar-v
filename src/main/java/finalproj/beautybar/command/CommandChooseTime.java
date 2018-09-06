package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.ChooseTimeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

public class CommandChooseTime implements ICommand {

    private static final String DATE = "date";
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        String selectedDate = request.getParameter(DATE);
        HttpSession session = request.getSession();
        String master = (String) session.getAttribute("master");

        ChooseTimeService chooseTimeService = ChooseTimeService.getChooseTimeService();
        //DateTimeFormatter formatter = DateTimeFormatter.ofPattern("LLL ");
       // Date date = new Date(selectedDate);
       // String formatted = new SimpleDateFormat("yyyy-MM-dd").format(date);
        Date date = new SimpleDateFormat("EEE MMM dd yyyy").parse(selectedDate);
        List<Integer> freetimes = chooseTimeService.getFreeTimes(master,date);
        session.setAttribute("date", date);
        session.setAttribute("freetimes", freetimes);
        page = Config.getInstance().getProperty(Config.CHOOSETIME);
        return page;
    }
}
