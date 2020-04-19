package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.dao.SolutionDao;
import pl.makuta.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/solutionEdit")
public class SolutionEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        int solutionId = Integer.parseInt(req.getParameter("id"));
        int exerciseId = Integer.parseInt(req.getParameter("exerciseId"));
        req.setAttribute("exerciseId", exerciseId);
        req.setAttribute("exercise", new ExerciseDao().findExerciseById(exerciseId));
        req.setAttribute("solution", new SolutionDao().read(solutionId));
        req.getRequestDispatcher("/solutionEdit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        SolutionDao solutionDao = new SolutionDao();
        Solution solution = solutionDao.read(Integer.parseInt(req.getParameter("solutionId")));
        solution.setDescription(req.getParameter("description"));
        solutionDao.update(solution);
        resp.sendRedirect("/exerciseSolutionList?id=" + req.getParameter("exerciseId"));
    }
}
