package com.teachmeskills.lesson_27.servlet;

import com.teachmeskills.lesson_27.logger.LoggerUtil;
import com.teachmeskills.lesson_27.repository.ToDoRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/todolist")
public class TodoListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userName = (String) session.getAttribute("username");

        if (userName != null) {
            LoggerUtil.logToFile("The user -> " + userName + " went to the todolist page");
            req.getRequestDispatcher("/page/todolist.jsp").forward(req, resp);
        }else {
            LoggerUtil.logToFile("User redirected to 401 error page");
            resp.sendRedirect("error/401.html");
        }
    }

}
