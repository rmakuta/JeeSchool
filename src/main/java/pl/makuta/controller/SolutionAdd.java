package pl.makuta.controller;

import pl.makuta.dao.SolutionDao;
import pl.makuta.dao.UserDao;
import pl.makuta.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/solutionAdd")
public class SolutionAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        System.out.println(req.getParameter("exerciseId"));
        req.setAttribute("exerciseId", req.getParameter("exerciseId"));
        UserDao userDao = new UserDao();
        req.setAttribute("users", userDao.findAll());
        req.getRequestDispatcher("/solutionAdd.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        Solution solution = new Solution();
        SolutionDao solutionDao = new SolutionDao();
        solution.setExerciseId(Integer.parseInt(req.getParameter("exerciseId")));
        solution.setDescription(req.getParameter("description"));
        solution.setUsersId(Integer.parseInt(req.getParameter("userId")));
        solutionDao.create(solution);
        resp.sendRedirect("/exerciseSolutionList?id=" + Integer.parseInt(req.getParameter("exerciseId")));
    }
}
