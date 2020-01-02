package pl.makuta.controller;

import pl.makuta.dao.GroupDao;
import pl.makuta.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminGroupAdd")
public class AdminGroupAdd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        GroupDao groupDao = new GroupDao();
        Group group = new Group();
        group.setName(req.getParameter("name"));
        groupDao.create(group);
        resp.sendRedirect("/adminGroups");
    }
}
