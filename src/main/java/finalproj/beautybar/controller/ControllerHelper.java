package finalproj.beautybar.controller;

import finalproj.beautybar.command.CommandLogin;
import finalproj.beautybar.command.CommandMissing;
import finalproj.beautybar.command.CommandSignUp;
import finalproj.beautybar.command.ICommand;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

public class ControllerHelper {
    private static ControllerHelper instance = null;
    HashMap<String, ICommand> commands = new HashMap<String, ICommand>();

    private ControllerHelper() {
        commands.put("login", new CommandLogin());
        commands.put("signup", new CommandSignUp());
    }

    public ICommand getCommand(HttpServletRequest request) {
        ICommand command = commands.get(request.getParameter("command"));
        if (command == null) {
            command = new CommandMissing();
        }
        return command;
    }

    public static ControllerHelper getInstance() {
        if (instance == null) {
            instance = new ControllerHelper();
        }
        return instance;
    }
}
