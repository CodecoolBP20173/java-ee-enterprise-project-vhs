package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import java.util.List;

@Service
public class MovieDetailService {

    @Autowired
    private MovieRepository movieRepository;

    public List<Movie> findAll() {
        return movieRepository.findAll();
    }

    public Movie findById(Long id) {
        return movieRepository.getOne(id);
    }

    public void deleteAll() {
        movieRepository.deleteAll();
    }

    public void saveTodo(Movie entity) {
        movieRepository.save(entity);
    }

    public void updateTodo(Long id, String title) {
        Movie movie = movieRepository.getOne(id);
        movie.setTitle(title);
        movieRepository.save(movie);
    }

    public void deleteById(Long id) {
        Movie movie = movieRepository.getOne(id);
        movieRepository.delete(movie);
    }



}
