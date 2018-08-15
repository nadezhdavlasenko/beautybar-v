package finalproj.beautybar.controller;

import finalproj.beautybar.dao.*;
import finalproj.beautybar.entity.Role;
import finalproj.beautybar.entity.Scedule;
import finalproj.beautybar.entity.ServiceType;
import finalproj.beautybar.entity.Worker;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet extends HttpServlet {
    public Servlet() {
        super();
    }

    public void init() throws ServletException {
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        IRoleDAO roleDAO = DAOFactory.getRoleDAO();
        //IWorkerDAO workerDAO = DAOFactory.getWorkerDAO();
        ISceduleDAO sceduleDAO = DAOFactory.getSceduleDAO();
        IServiceTypeDAO serviceTypeDAO = DAOFactory.getServiceTypeDAO();
        try {
           // System.out.println(roleDAO.findAll().get(1)+ " " + roleDAO.findEntityById((long) 1));
            response.getWriter().print("This is " + this.getClass().getName()
                    + ", using the GET method: " + serviceTypeDAO.delete((long) 1));
//new Worker((long) 2,new Role((long) 1)))

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().print("This is " + this.getClass().getName()
                + ", using the POST method");
    }

    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
    }
}
