package com.vhs.videostore.controller;

import com.vhs.videostore.config.TemplateEngineUtil;
import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import com.vhs.videostore.model.User;
import com.vhs.videostore.services.UserPageService;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

import javax.persistence.NoResultException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user/*")
public class UserPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestPath = req.getPathInfo();
        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
        WebContext context = new WebContext(req, resp, req.getServletContext());

        if (wrongPath(requestPath)) {
            String errorMessage;
            if(requestPath == null) {
                errorMessage = "There was no user id given in the URL!";
            } else {
                errorMessage = "Wrong URL was given, please match the following format: /user/<userID> !";
            }
            context.setVariable("errorString", errorMessage);
            try {
                engine.process("error.html", context, resp.getWriter());
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {

            int userID = Integer.parseInt(requestPath.split("/")[1]);

            User foundUser = null;
            try {
                foundUser = UserPageService.getUserByID(userID);
                context.setVariable("user", foundUser);
                try {
                    engine.process("userpage.html", context, resp.getWriter());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (NoResultException e) {
                String errorMessage = "There is no known user with this ID!";
                context.setVariable("errorString", errorMessage);
                engine.process("error.html", context, resp.getWriter());
            }

        }

    }

    private boolean wrongPath(String path) {
        if (path == null) return true;

        String[] pathParams = path.split("/");
        try {
            int id = Integer.parseInt(pathParams[1]);
            return pathParams.length != 2;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return true;
        }
    }
}
