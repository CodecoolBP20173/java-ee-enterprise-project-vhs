package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MovieDetailService {

    private MovieRepository movieRepository;


    public MovieDetailService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    public List<Movie> findAll() {
        return movieRepository.findAll();
    }

    public Optional<Movie> findById(int id) {
        return movieRepository.findById(id);
    }

    public void deleteAll() {
        movieRepository.deleteAll();
    }

    public void saveMOvie(Movie entity) {
        movieRepository.save(entity);
    }

    public void updateMovie(int id, String title) {
        Movie movie = movieRepository.getOne(id);
        movie.setTitle(title);
        movieRepository.save(movie);
    }

    public void deleteById(int id) {
        Movie movie = movieRepository.getOne(id);
        movieRepository.delete(movie);
    }
}
