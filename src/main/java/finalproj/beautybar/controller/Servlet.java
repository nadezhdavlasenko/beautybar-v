package finalproj.beautybar.controller;

import finalproj.beautybar.command.ICommand;
import finalproj.beautybar.manager.Config;
import finalproj.beautybar.manager.Message;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Servlet extends HttpServlet {

    ControllerHelper controllerHelper = ControllerHelper.getInstance();

    public Servlet() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        String page = null;
        try {
            HttpSession session = request.getSession(true);
            ICommand command = controllerHelper.getCommand(request);
            page = command.execute(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
            request.setAttribute("messageError", Message.getInstance().getProperty(Message.SERVLET_EXECPTION));

        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("messageError", Message.getInstance().getProperty(Message.IO_EXCEPTION));

        }

        RequestDispatcher dispatcher;
        dispatcher = getServletContext().getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public void destroy() {
//        super.destroy(); // Just puts "destroy" string in log
//    }
}
