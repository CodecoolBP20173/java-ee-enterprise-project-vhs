package com.vhs.videostore.controller;

import com.auth0.SessionUtils;
import com.vhs.videostore.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.model.SpecialOffer;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.util.List;

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
            thModel.addAttribute("loggedIn", "true");

            // TODO: I recommend to see this SessionUtils class, it can do what we wanted to achieve with Uutility.loginFromSession
            SessionUtils.set(req, "userId", userId);

            // Just to show that to userID is in the session
            System.out.println("Logged in UserID in Session: " + req.getSession().getAttribute("userId"));
        } else {
            thModel.addAttribute("loggedIn", "false");
        }

        List<Movie> movies = mainPageService.getAllMovies();
        List<SpecialOffer> specialOffers = mainPageService.getAllSpecialOffers();

        saveObjectToModel(thModel, "movies", movies);
        saveObjectToModel(thModel, "specialOffers", specialOffers);

        return "index";
    }


    private void saveObjectToModel(Model model, String key, Object value) {
        model.addAttribute(key, value);
    }

}

