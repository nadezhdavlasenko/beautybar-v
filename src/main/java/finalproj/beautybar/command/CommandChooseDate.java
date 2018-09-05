package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommandChooseDate implements ICommand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession();
        session.setAttribute("currentquery", request.getQueryString());
        String service = request.getParameter("service");
        page = Config.getInstance().getProperty(Config.CHOOSEDATE);
        return page;
    }
}
