package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CommandSettings implements ICommand {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") == null){
            page = Config.getInstance().getProperty(Config.LOGIN);
        } else
            page = Config.getInstance().getProperty(Config.SETTINGS);
        return page;
    }
}
