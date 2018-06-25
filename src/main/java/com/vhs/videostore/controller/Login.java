package com.vhs.videostore.controller;

import com.vhs.videostore.model.User;
import com.vhs.videostore.services.UserPageService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Login extends HttpServlet {

    private UserPageService userPageService;

    public Login(UserPageService userPageService) {
        this.userPageService = userPageService;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
        WebContext context = new WebContext(req, resp, req.getServletContext());
        HttpSession session = context.getSession();

        String email = null;
        String password = null;
        String hash = null;

        email = req.getParameter("email");
        password = req.getParameter("password");
        hash = userPageService.getHashByEmail(email);

        boolean isVerified = Utility.verifyHash(password, hash);
        if (isVerified) {
            User userLoggedIn = userPageService.getUserByEmail(email);
            session.setAttribute("loggedIn", true);
            session.setAttribute("userId", userLoggedIn.getId());
            session.setAttribute("orderId", null);
            session.setAttribute("user", userLoggedIn);
            System.out.println("logged in as " + userLoggedIn.getName());
        } else {
            session.setAttribute("loggedIn", false);
            System.out.println("login failed");
        }
        resp.sendRedirect("/");
    }


}
