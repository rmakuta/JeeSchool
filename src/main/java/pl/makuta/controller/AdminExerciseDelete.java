package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminExerciseDelete")
public class AdminExerciseDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        String exerciseId = req.getParameter("id");
        ExerciseDao exerciseDao = new ExerciseDao();
        exerciseDao.delete(Integer.parseInt(exerciseId));
        resp.sendRedirect("/adminExercises");
    }
}
