package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminExerciseAdd")
public class AdminExerciseAdd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        ExerciseDao exerciseDao = new ExerciseDao();
        Exercise exercise = new Exercise();
        exercise.setTitle(req.getParameter("title"));
        exercise.setDescription(req.getParameter("description"));
        exerciseDao.create(exercise);
        resp.sendRedirect("/adminExercises");
    }
}
