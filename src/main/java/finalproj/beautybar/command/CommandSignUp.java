package finalproj.beautybar.command;

import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;
import finalproj.beautybar.service.SignUpService;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CommandSignUp implements ICommand{

    private static final String EMAIL = "email";
    private static final String PASSWORD = "password";
    private static final String NAME = "name";
    private static final String PHONE = "phone";
    private static int workload = 31;

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse responce) throws Exception {
        String page = null;
        String email = request.getParameter(EMAIL);
        String salt = BCrypt.gensalt(workload);
        String hashedPassword = BCrypt.hashpw(request.getParameter(PASSWORD), salt);
        String name = request.getParameter(NAME);
        String phone = request.getParameter(PHONE);

        SignUpService signUpService = SignUpService.getSignUpService();

        if (signUpService.signUp(name, email, phone, hashedPassword)){
            page = Config.getInstance().getProperty(Config.LOGIN);
        }else {
            request.setAttribute("error", Message.getInstance().getProperty(Message.SIGNUP_ERROR));
            page = Config.getInstance().getProperty(Config.ERROR);
        }

        System.out.println("CommandSignUp");
        return page;
    }
}
