package com.vhs.videostore.api;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.repository.MovieRepository;
import com.vhs.videostore.services.MovieDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
public class MoviePageServiceREST {

    private MovieDetailService movieDetailService;

    public MoviePageServiceREST(MovieDetailService movieDetailService) {
        this.movieDetailService = movieDetailService;
    }

    @RequestMapping(value = "/movie-detail", method = RequestMethod.POST)
    public ResponseEntity<Movie> getMovie(@RequestParam("movieId") String id) {
        return new ResponseEntity<>(movieDetailService.findById(Integer.parseInt(id)).get(), HttpStatus.OK);
    }
}
