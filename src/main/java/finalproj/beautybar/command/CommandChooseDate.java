package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.ChooseDateService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

public class CommandChooseDate implements ICommand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        session.setAttribute("currentquery", request.getQueryString());
        String master = request.getParameter("master");
        session.setAttribute("master", master);
        ChooseDateService chooseDateService = ChooseDateService.getChooseDateService();
        List<Integer> disabledDays = chooseDateService.getDisabledDaysByMasterName(master);
        List<Date> disabledDates = chooseDateService.getDisabledDatesByMasterName(master);
        List<String>  disabledString = new ArrayList<>();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        disabledDates.forEach(date -> disabledString.add(dateFormat.format(date)));
        session.setAttribute("disabledDays", disabledDays);
        session.setAttribute("disabledString", disabledString);
        System.out.println(session.getAttribute("disabledDays"));
        System.out.println(session.getAttribute("disabledString"));
        page = Config.getInstance().getProperty(Config.CHOOSEDATE);
        return page;
    }
}
