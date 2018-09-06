package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.ChooseMasterService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandChooseMaster implements ICommand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        List<String> list = new ArrayList<>();
        ChooseMasterService chooseMasterService = ChooseMasterService.getChooseMasterService();
        HttpSession session = request.getSession();
        session.setAttribute("currentquery", request.getQueryString());
        String service = request.getParameter("service");

        list = chooseMasterService.getAllMastersNamesByService(service);

        session.setAttribute("masters", list);
        page = Config.getInstance().getProperty(Config.CHOOSEMASTER);

        return page;
    }
}
