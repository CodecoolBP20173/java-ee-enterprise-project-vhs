package com.vhs.videostore.services;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.SpecialOffer;
import com.vhs.videostore.repository.*;
import org.omg.CORBA.TIMEOUT;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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

@Service
public class MainPageService {

    private MovieRepository movieRepository;
    private SpecialOfferRepository specialOfferRepository;
//    private UserRepository userRepository;

    public MainPageService(MovieRepository movieRepository, SpecialOfferRepository specialOfferRepository) {
        this.movieRepository = movieRepository;
        this.specialOfferRepository = specialOfferRepository;
//        this.userRepository = userRepository;
    }

    public List<Movie> getAllMovies(){
        return movieRepository.findAll();
    }

    public List<SpecialOffer> getAllSpecialOffers(){
        return specialOfferRepository.findAll();

    }

//    public User findById(int id) {
//        return userRepository.getOne(id);
//    }
}
