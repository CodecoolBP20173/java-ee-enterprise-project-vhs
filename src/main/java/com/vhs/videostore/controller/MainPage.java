package com.vhs.videostore.controller;

import com.vhs.videostore.config.TemplateEngineUtil;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Tag;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;

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

        // sample context TODO: get from DB
        List<Movie> movies = new ArrayList<>();
        List<Tag> tags1 = new ArrayList<>();
        List<Tag> tags2 = new ArrayList<>();
        tags1.add(Tag.CULTURE);
        tags1.add(Tag.COMEDY);
        tags2.add(Tag.COMEDY);
        movies.add(new Movie( "title", new Date(2010, 10, 13), 3123123,  tags1));
        movies.add(new Movie( "another title", new Date(1999, 10, 1), 11,  tags2));

        List<Movie> featuredMovies = new ArrayList<>();
        featuredMovies.add(new Movie( "featured TITLE", new Date(1980, 1, 1), 3123123,  tags1));
        featuredMovies.add(new Movie( "another featured movide title", new Date(1890, 2, 3), 10,  tags2));


        context.setVariable("movies", movies);
        context.setVariable("featuredMovies", featuredMovies);


        try {
            engine.process("index.html", context, resp.getWriter());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
