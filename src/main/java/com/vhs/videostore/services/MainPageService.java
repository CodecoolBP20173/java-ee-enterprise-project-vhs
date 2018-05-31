package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.SpecialOffer;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.List;

public class MainPageService {

    public static List<Movie> getAllMovies(){
        EntityManager em = EMProvider.getEntityManagerInstance();
        List<Movie> movies = em.createQuery("SELECT m FROM Movie m", Movie.class).getResultList();
        return movies;
    }

    public static List<SpecialOffer> getAllFSpecialOffers(){
        EntityManager em = EMProvider.getEntityManagerInstance();
        List<SpecialOffer> specialOffers = em.createQuery("SELECT s FROM SpecialOffer s", SpecialOffer.class).getResultList();
        return specialOffers;
    }



}
