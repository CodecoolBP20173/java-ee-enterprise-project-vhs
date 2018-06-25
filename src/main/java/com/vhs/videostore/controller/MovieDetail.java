//package com.vhs.videostore.controller;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.vhs.videostore.model.Movie;
//import com.vhs.videostore.services.MovieDetailService;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.context.annotation.SessionScope;
//
//import java.io.IOException;
//
//
//@Controller
//@SessionScope
//public class MovieDetail {
//
//    @RequestMapping(value = "/", method = RequestMethod.POST)
//    public String moviePage() {
//
//        return "index";
//    }
//
//    private MovieDetailService movieDetailService;
//
//    public MovieDetail(MovieDetailService movieDetailService) {
//        this.movieDetailService = movieDetailService;
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        int movieId = Integer.parseInt(req.getParameter("movieId"));
//        Movie movie = movieDetailService.getSingleMovie(movieId);
//
//        resp.setContentType("application/json");
//
//        ObjectMapper mapper = new ObjectMapper();
//        mapper.writeValue(resp.getOutputStream(), movie);
//
//
//    }
//
//    public MovieDetailService getMovieDetailService() {
//        return movieDetailService;
//    }
//
//    public void setMovieDetailService(MovieDetailService movieDetailService) {
//        this.movieDetailService = movieDetailService;
//    }
//}
