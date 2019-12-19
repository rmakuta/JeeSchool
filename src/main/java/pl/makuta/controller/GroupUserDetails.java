package pl.makuta.controller;

import pl.makuta.dao.ExerciseDao;
import pl.makuta.dao.SolutionDao;
import pl.makuta.dao.UserDao;
import pl.makuta.model.Solution;
import pl.makuta.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/groupUserDetails")
public class GroupUserDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = Integer.parseInt(req.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(userId);
        req.setAttribute("user", user);
        SolutionDao solutionDao = new SolutionDao();
        List<Solution> solutions = solutionDao.findAllByUserId(userId);
        req.setAttribute("solutions", solutions);
        ExerciseDao exerciseDao = new ExerciseDao();
        req.setAttribute("exerciseDao", exerciseDao);
        req.getRequestDispatcher("/groupUserDetails.jsp").forward(req, resp);
    }
}
