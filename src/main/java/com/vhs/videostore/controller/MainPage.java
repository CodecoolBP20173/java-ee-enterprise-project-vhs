package com.vhs.videostore.controller;

import com.vhs.videostore.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.model.SpecialOffer;

import javax.persistence.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class MainPage{

    private MainPageService mainPageService;

    public MainPage(MainPageService mainPageService) {
        this.mainPageService = mainPageService;
    }

    @GetMapping(value = "/")
    public String mainUI(Model model) {

        List<Movie> movies = mainPageService.getAllMovies();
        List<SpecialOffer> specialOffers = mainPageService.getAllSpecialOffers();

        //context = Utility.loginFromSession(context, req);

        saveObjectToModel(model, "movies", movies);
        saveObjectToModel(model, "specialOffers", specialOffers);

        return "index";
    }

    private void saveObjectToModel(Model model, String key, Object value) {
        model.addAttribute(key, value);
    }

}
