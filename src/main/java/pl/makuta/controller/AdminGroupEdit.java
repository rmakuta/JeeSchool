package pl.makuta.controller;

import pl.makuta.dao.GroupDao;
import pl.makuta.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminGroupEdit")
public class AdminGroupEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String groupId = req.getParameter("id");
        GroupDao groupDao = new GroupDao();
        Group group = groupDao.read(Integer.parseInt(groupId));
        req.setAttribute("group", group);
        req.getRequestDispatcher("/adminGroupEdit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        Group group = new Group();
        group.setName(req.getParameter("name"));
        group.setId(Integer.parseInt(req.getParameter("id")));
        groupDao.update(group);
        resp.sendRedirect("/adminGroups");
    }
}
