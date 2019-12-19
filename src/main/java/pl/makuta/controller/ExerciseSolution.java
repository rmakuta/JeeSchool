package pl.makuta.controller;

import pl.makuta.dao.SolutionDao;
import pl.makuta.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/exerciseSolution")
public class ExerciseSolution extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();
        Solution solution = solutionDao.read(Integer.parseInt(req.getParameter("id")));
        req.setAttribute("solution", solution);
        req.getRequestDispatcher("/exerciseSolution.jsp").forward(req, resp);
    }
}
