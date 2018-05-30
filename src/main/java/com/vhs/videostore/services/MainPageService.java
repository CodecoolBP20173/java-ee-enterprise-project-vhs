package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

public class MainPageService {

    public static List<Movie> getAllMovies(){
        EntityManager em = EMProvider.getEntityManagerInstance();
        List<Movie> movies = em.createQuery("SELECT m FROM Movie m", Movie.class).getResultList();
        return movies;
    }

}
