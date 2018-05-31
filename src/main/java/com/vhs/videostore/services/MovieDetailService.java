package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;

import javax.persistence.EntityManager;

public class MovieDetailService {

    public static Movie getSingleMovie(int id){
        EntityManager em = EMProvider.getEntityManagerInstance();
        return em.find(Movie.class, id);
    }

}
