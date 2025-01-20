package com.teachmeskills.lesson_27.listener;

import com.teachmeskills.lesson_27.logger.LoggerUtil;
import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class RequestListener implements ServletRequestListener {
    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        String message = "The request has been initialized: " + sre.getServletRequest().getRemoteAddr();
        LoggerUtil.logToFile(message);
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        String message = "The request is destroyed: " + sre.getServletRequest().getRemoteAddr();
        LoggerUtil.logToFile(message);
    }
}
