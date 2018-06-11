package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;

import javax.persistence.EntityManager;

public class MovieDetailService {

    private EntityManager em;

    public MovieDetailService(EntityManager em) {
        this.em = em;
    }

    public  Movie getSingleMovie(int id){
        return em.find(Movie.class, id);
    }

}
