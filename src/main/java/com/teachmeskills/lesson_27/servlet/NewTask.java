package com.teachmeskills.lesson_27.servlet;

import com.teachmeskills.lesson_27.repository.ToDoRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/newTask")
public class NewTask extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session =  req.getSession();
        String username = (String) session.getAttribute("username");
        if(username != null){
            String newTask = req.getParameter("new-task");
            if (newTask != null) {
                ToDoRepository.newTask(newTask);
                req.getRequestDispatcher("/page/todolist.jsp").forward(req, resp);
            }else {
                session.setAttribute("error", "Добавте описание к задаче");
            }
        }else {
            resp.sendRedirect("/login.html");
        }
    }
}
