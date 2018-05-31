package com.vhs.videostore.controller;

import com.vhs.videostore.config.TemplateEngineUtil;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Tag;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

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

@WebServlet(urlPatterns = {"/"})
public class MainPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
        WebContext context = new WebContext(req, resp, req.getServletContext());

        List<Movie> movies = MainPageService.getAllMovies();




//        // sample context TODO: get from DB
//        List<Movie> movies = new ArrayList<>();
        List<Tag> tags1 = new ArrayList<>();
        List<Tag> tags2 = new ArrayList<>();
        tags1.add(Tag.CULTURE);
        tags1.add(Tag.COMEDY);
        tags2.add(Tag.COMEDY);
        Movie movie1 = new Movie( "title",2010, 3123123,  tags1);
        Movie movie2 = new Movie( "another title",1999, 11,  tags2);
        movie1.setId(1);
        movie2.setId(2);
//        movies.add(movie1);
//        movies.add(movie2);
        List<Movie> featuredMovies = new ArrayList<>();
        featuredMovies.add(movie1);
        featuredMovies.add(movie2);


        context.setVariable("movies", movies);
        context.setVariable("featuredMovies", featuredMovies);


        try {
            engine.process("index.html", context, resp.getWriter());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
