package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import finalproj.beautybar.service.LoginService;
import org.mindrot.jbcrypt.BCrypt;

public class CommandLogin implements ICommand{

    private static final String LOGIN = "login";
    private static final String PASSWORD = "password";
    private static int workload = 31;


    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        String login = request.getParameter(LOGIN);
        String salt = BCrypt.gensalt(workload);
        String hashed_password = BCrypt.hashpw(request.getParameter(PASSWORD), salt);
        String password = request.getParameter(PASSWORD);
        LoginService loginService = new LoginService();
        if (loginService.authentificate(login,password)) {
            request.setAttribute("user", login);
            page = Config.getInstance().getProperty(Config.MAIN);
        } else {
            request.setAttribute("error", Message.getInstance().getProperty(Message.LOGIN_ERROR));
            page = Config.getInstance().getProperty(Config.ERROR);
        }

        return page;
    }
}
