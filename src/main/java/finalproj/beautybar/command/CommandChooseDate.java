package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommandChooseDate implements ICommand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        page = Config.getInstance().getProperty(Config.CHOOSEDATE);
        return page;
    }
}
