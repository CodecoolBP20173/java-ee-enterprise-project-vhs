package com.vhs.videostore.controller;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import com.vhs.videostore.config.TemplateEngineUtil;
import com.vhs.videostore.model.SpecialOffer;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.model.SpecialOffer;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Tag;

import javax.persistence.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MainPage extends HttpServlet {

    private MainPageService mainPageService;

    public MainPage(MainPageService mainPageService) {
        this.mainPageService = mainPageService;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
        WebContext context = new WebContext(req, resp, req.getServletContext());

        List<Movie> movies = mainPageService.getAllMovies();
        List<SpecialOffer> specialOffers = mainPageService.getAllSpecialOffers();


        context.setVariable("movies", movies);
        context.setVariable("specialOffers", specialOffers);


        try {
            engine.process("index.html", context, resp.getWriter());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
