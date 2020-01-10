package pl.makuta.controller;

import pl.makuta.dao.UserDao;
import pl.makuta.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserEdit")
public class AdminUserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String userId = req.getParameter("id");
        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(userId));
        req.setAttribute("user", user);
        req.getRequestDispatcher("/adminUserEdit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        UserDao userDao = new UserDao();
        User user = new User();
        user.setName(req.getParameter("name"));
        user.setEmail(req.getParameter("email"));
        user.setPassword(req.getParameter("password"));
        user.setGroupId(Integer.parseInt(req.getParameter("groupId")));
        user.setId(Integer.parseInt(req.getParameter("id")));
        userDao.update(user);
        resp.sendRedirect("/adminUsers");
    }
}
