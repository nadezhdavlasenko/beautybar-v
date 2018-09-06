package finalproj.beautybar.controller;

import finalproj.beautybar.command.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

public class ControllerHelper {
    private static ControllerHelper instance = null;
    HashMap<String, ICommand> commands = new HashMap<String, ICommand>();

    private ControllerHelper() {
        commands.put("login", new CommandLogin());
        commands.put("signup", new CommandSignUp());
        commands.put("settings", new CommandSettings());
        commands.put("chooseservicetype", new CommandChooseServiceType());
        commands.put("chooseservice", new CommandChooseService());
        commands.put("choosedate", new CommandChooseDate());
        commands.put("choosemaster", new CommandChooseMaster());
        commands.put("choosetime", new CommandChooseTime());

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
