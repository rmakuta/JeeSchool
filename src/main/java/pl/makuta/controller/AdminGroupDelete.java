package pl.makuta.controller;

import pl.makuta.dao.GroupDao;
import pl.makuta.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminGroupDelete")
public class AdminGroupDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String groupId = req.getParameter("id");
        GroupDao groupDao = new GroupDao();
        groupDao.delete(Integer.parseInt(groupId));
        resp.sendRedirect("/adminGroups");
    }
}
