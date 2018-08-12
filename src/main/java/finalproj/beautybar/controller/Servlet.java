package finalproj.beautybar.controller;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IRoleDAO;
import finalproj.beautybar.dao.impl.RoleDAOImpl;

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
//        response.getWriter().print("This is " + this.getClass().getName()
//                + ", using the GET method");
        IRoleDAO roleDAO = DAOFactory.getRoleDAO();
//        roleDAO.findAll().forEach(System.out::println);
        try {
            response.getWriter().print("This is " + this.getClass().getName()
                    + ", using the GET method" + roleDAO.findAll().get(1) +
                    "\nfindEntityById" + roleDAO.findEntityById((long) 1));
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
