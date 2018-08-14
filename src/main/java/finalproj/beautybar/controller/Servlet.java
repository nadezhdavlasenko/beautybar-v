package finalproj.beautybar.controller;

import finalproj.beautybar.dao.DAOFactory;
import finalproj.beautybar.dao.IRoleDAO;
import finalproj.beautybar.dao.impl.RoleDAOImpl;
import finalproj.beautybar.entity.Role;

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
        try {
            System.out.println(roleDAO.findAll().get(1)+ " " + roleDAO.findEntityById((long) 1));
            response.getWriter().print("This is " + this.getClass().getName()
                    + ", using the GET method" + roleDAO.findAll().get(1) +
                    " findEntityById" + roleDAO.findEntityById((long) 1) +
            " delete:" + roleDAO.delete((long) 7) +
            " create:" + roleDAO.create(new Role("Смотритель")) +
            " update"  + roleDAO.update(new Role((long) 9, "Торговец")));
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
