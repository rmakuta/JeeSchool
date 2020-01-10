package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminExercises")
public class AdminExercises extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ExerciseDao exerciseDao = new ExerciseDao();
        List<Exercise> exercises = exerciseDao.findAll();
        req.setAttribute("exercises", exercises);
        req.getRequestDispatcher("/adminExercises.jsp").forward(req, resp);
    }
}
