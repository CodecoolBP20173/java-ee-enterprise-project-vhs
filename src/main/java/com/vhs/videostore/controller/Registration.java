package com.vhs.videostore.controller;

import com.vhs.videostore.config.TemplateEngineUtil;
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

public class Registration extends HttpServlet {

    private UserPageService userPageService;

    public Registration(UserPageService userPageService) {
        this.userPageService = userPageService;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
        WebContext context = new WebContext(req, resp, req.getServletContext());
        HttpSession session = req.getSession();


        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        String hash_password = Utility.hash(password);
        User userToAdd = new User(name, email, hash_password);
        userPageService.add(userToAdd);

        System.out.println(userToAdd.getEmail());
        System.out.println(session.getLastAccessedTime());
        // auto login after registration
        session.setAttribute("loggedIn", true);
        session.setAttribute("userId", userToAdd.getId());
        session.setAttribute("orderId", null);
        session.setAttribute("user", userToAdd);

        System.out.println("logged in as " + userToAdd.getName());

        // todo: refactor route to see if logged in
        resp.sendRedirect("/");
    }
}
