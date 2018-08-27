package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static finalproj.beautybar.manager.Config.LOGIN;

public class CommandSignUp implements ICommand{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        String login = request.getParameter(LOGIN);




        System.out.println("CommandSignUp");
        return "/index.jsp";
    }
}
