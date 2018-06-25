package com.vhs.videostore.controller;

import com.vhs.videostore.model.*;
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

        context = Utility.loginFromSession(context, req);

        context.setVariable("movies", movies);
        context.setVariable("specialOffers", specialOffers);

        try {
            engine.process("index.html", context, resp.getWriter());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public MainPageService getMainPageService() {
        return mainPageService;
    }

    public void setMainPageService(MainPageService mainPageService) {
        this.mainPageService = mainPageService;
    }
}
