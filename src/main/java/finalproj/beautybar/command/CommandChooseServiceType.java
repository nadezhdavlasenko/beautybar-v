package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.service.ChooseServiceServiceType;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class CommandChooseServiceType implements ICommand {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        List<String> list = new ArrayList<>();
        ChooseServiceServiceType chooseServiceService = ChooseServiceServiceType.getChooseServiceServiceType();
        HttpSession session = request.getSession(true);
        session.setAttribute("currentquery", request.getQueryString());
        if (session.getAttribute("user") == null){
            page = Config.getInstance().getProperty(Config.LOGIN);
        } else {
            System.out.println("} else {");
            chooseServiceService.getAllServiceTypes().forEach((p) -> {list.add(p.getName());
                System.out.println(p);});
            session.setAttribute("servicetypes", list);
            //session.setAttribute("current page", Config.getInstance().getProperty(Config.CHOOSESERVICE));

            page = Config.getInstance().getProperty(Config.CHOOSESERVICE);
        }
        return page;
    }
}
