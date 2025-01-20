package com.teachmeskills.lesson_27.servlet;

import com.teachmeskills.lesson_27.listener.RequestListener;
import com.teachmeskills.lesson_27.listener.SessionListener;
import com.teachmeskills.lesson_27.logger.LoggerUtil;
import com.teachmeskills.lesson_27.repository.UserRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String username = req.getParameter("username");
       String password = req.getParameter("password");

        boolean isValidUser = UserRepository.isValidLogin(username, password);

        LoggerUtil.logToFile("Login attempt -> username=" + username);

        if (isValidUser){
            HttpSession newSession = req.getSession();
            newSession.setAttribute("username", username);
            LoggerUtil.logToFile("Successful login -> " + username);
            req.getRequestDispatcher("/page/about.html").forward(req,resp);
        }else {
            LoggerUtil.logToFile("The user was not found -> " + username);
            resp.sendRedirect("/login.html?error=true");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
