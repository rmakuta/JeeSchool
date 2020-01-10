package pl.makuta.controller;

import pl.makuta.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserDelete")
public class AdminUserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String userId = req.getParameter("id");
        UserDao userDao = new UserDao();
        userDao.delete(Integer.parseInt(userId));
        resp.sendRedirect("/adminUsers");
    }
}
