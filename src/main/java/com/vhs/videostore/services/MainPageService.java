package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.SpecialOffer;
import org.omg.CORBA.TIMEOUT;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class MainPageService {

    public static List<Movie> getAllMovies(){
        EntityManager em = EMProvider.getEntityManagerInstance();
        List<Movie> movies = em.createQuery("SELECT m FROM Movie m", Movie.class).getResultList();
        return movies;
    }

    public static List<SpecialOffer> getAllSpecialOffers(){

        Timestamp currentTime = new Timestamp(System.currentTimeMillis());
        EntityManager em = EMProvider.getEntityManagerInstance();
        TypedQuery<SpecialOffer> query = em.createQuery("SELECT s FROM SpecialOffer s" +
                " WHERE s.toDate >= :currentTime", SpecialOffer.class);
        return query.setParameter("currentTime", currentTime).getResultList();
    }
}
