package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.dao.SolutionDao;
import pl.makuta.dao.UserDao;
import pl.makuta.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//@WebServlet("/")
public class HomePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findRecent(Integer.parseInt(getInitParameter("number-solutions")));
        UserDao userDao = new UserDao();
        ExerciseDao exerciseDao = new ExerciseDao();
        req.setAttribute("solutions", solutions);
        req.setAttribute("userDao", userDao);
        req.setAttribute("exerciseDao", exerciseDao);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}
