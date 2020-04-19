package pl.makuta.controller;

import pl.makuta.dao.SolutionDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/solutionDelete")
public class SolutionDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        SolutionDao solutionDao = new SolutionDao();
        solutionDao.delete(Integer.parseInt(req.getParameter("id")));
        resp.sendRedirect("/exerciseSolutionList?id=" + req.getParameter("exerciseId"));
    }
}
