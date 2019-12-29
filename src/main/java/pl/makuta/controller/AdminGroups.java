package pl.makuta.controller;

import pl.makuta.dao.GroupDao;
import pl.makuta.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminGroups")
public class AdminGroups extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        List<Group> groups = groupDao.findAll();
        req.setAttribute("groups", groups);
        req.getRequestDispatcher("/adminGroups.jsp").forward(req, resp);
    }
}
