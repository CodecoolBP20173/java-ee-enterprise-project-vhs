package com.vhs.videostore.controller;

import com.auth0.SessionUtils;
import com.vhs.videostore.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.model.SpecialOffer;

import javax.persistence.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Map;

@Controller
public class MainPage{

    private MainPageService mainPageService;

    public MainPage(MainPageService mainPageService) {
        this.mainPageService = mainPageService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    protected String home(Model thModel, final Principal principal, HttpServletRequest req) {
        if (principal != null) {
            String userId = principal.getName().split("\\|")[1].trim();
            saveObjectToModel(thModel, "userId", userId);

            // TODO: I recommend to see this SessionUtils class, it can do what we wanted to achieve with Utility.loginFromSession
            SessionUtils.set(req, "userId", userId);

            // Just to show that to userID is in the session
            System.out.println("Logged in UserID in Session: " + req.getSession().getAttribute("userId"));
        }

        List<Movie> movies = mainPageService.getAllMovies();
        List<SpecialOffer> specialOffers = mainPageService.getAllSpecialOffers();

        //context = Utility.loginFromSession(context, req);

        saveObjectToModel(thModel, "movies", movies);
        saveObjectToModel(thModel, "specialOffers", specialOffers);

        return "index";
    }


    private void saveObjectToModel(Model model, String key, Object value) {
        model.addAttribute(key, value);
    }

}

