package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.dao.SolutionDao;
import pl.makuta.dao.UserDao;
import pl.makuta.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/exerciseSolutionList")
public class ExerciseSolutionList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        req.setAttribute("solutions", solutionDao.findAllByExerciseId(Integer.parseInt(req.getParameter("id"))));
        ExerciseDao exerciseDao = new ExerciseDao();
        req.setAttribute("exercise", exerciseDao.findExerciseById(Integer.parseInt(req.getParameter("id"))));
        req.setAttribute("userDao", new UserDao());
        req.getRequestDispatcher("/exerciseSolutionList.jsp").forward(req, resp);
    }
}
