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

    public void init() throws ServletException {
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        String page = null;
        try {

            HttpSession session = request.getSession(true);
            //session.setAttribute("current page", Config.getInstance().getProperty(Config.INDEX));
            ICommand command = controllerHelper.getCommand(request);
            page = command.execute(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
            request.setAttribute("messageError", Message.getInstance().getProperty(Message.SERVLET_EXECPTION));

        } catch (IOException e) {
            e.printStackTrace();
            request.setAttribute("messageError", Message.getInstance().getProperty(Message.IO_EXCEPTION));

        }

        //test for repository
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
//        response.setContentType("text/html");
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        IRoleDAO roleDAO = DAOFactory.getRoleDAO();
//        //IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
//        ISceduleDAO sceduleDAO = DAOFactory.getSceduleDAO();
//        IServiceTypeDAO serviceTypeDAO = DAOFactory.getServiceTypeDAO();
//        IFeedbackDAO feedbackDAO = DAOFactory.getFeedbackDAO();
//        try {
//           // System.out.println(roleDAO.findAll().get(1)+ " " + roleDAO.findEntityById((long) 1));
//            response.getWriter().print("This is " + this.getClass().getName()
//                    + ", using the GET method: " + feedbackDAO.findAll());
////new Worker((long) 2,new Role((long) 1)))
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
    }
}
