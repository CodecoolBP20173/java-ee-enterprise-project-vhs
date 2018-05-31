package com.vhs.videostore.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.services.MovieDetailService;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(urlPatterns = "/movie-details")
public class MovieDetail extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int movieId = Integer.parseInt(req.getParameter("movieId"));
        Movie movie = MovieDetailService.getSingleMovie(movieId);

        resp.setContentType("application/json");

        JSONObject movieJSON = new JSONObject();
        movieJSON.put("title", movie.getTitle());
        movieJSON.put("releaseDate", Integer.toString(movie.getReleaseDate()));

        resp.getWriter().print(movieJSON);

        //ObjectMapper mapper = new ObjectMapper();
        //mapper.writeValue(resp.getWriter().print();, movie);


    }
}
