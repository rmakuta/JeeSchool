package pl.makuta.controller;

import pl.makuta.dao.GroupDao;
import pl.makuta.dao.UserDao;
import pl.makuta.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/groupUsersList")
public class GroupUsersList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        List<User> users = userDao.findAllByGroupId(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("users", users);
        GroupDao groupDao = new GroupDao();
        req.setAttribute("group", groupDao.read(Integer.parseInt(req.getParameter("id"))));
        req.getRequestDispatcher("/groupUsersList.jsp").forward(req, resp);
    }
}
