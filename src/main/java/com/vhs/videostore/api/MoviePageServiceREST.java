package com.vhs.videostore.api;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.services.MovieDetailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MoviePageServiceREST {

    private MovieDetailService movieDetailService;

    public MoviePageServiceREST(MovieDetailService movieDetailService) {
        this.movieDetailService = movieDetailService;
    }

    @RequestMapping(value = "/movie", method = RequestMethod.POST)
    public Movie getMovie(@RequestParam("id") String id) {
        Long parsedId = Long.parseLong(id);
        return movieDetailService.findById(parsedId);
    }
}
