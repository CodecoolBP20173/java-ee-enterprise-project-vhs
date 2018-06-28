package com.vhs.videostore.services;

import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import com.vhs.videostore.repository.CassetteRepository;
import com.vhs.videostore.repository.MovieRepository;
import com.vhs.videostore.repository.RentalRepository;
//import com.vhs.videostore.repository.UserRepository;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

@Service
public class RentalService {

    RentalRepository rentalRepository;
//    UserRepository userRepository;
    MovieRepository movieRepository;
    CassetteRepository cassetteRepository;

    public RentalService(
            RentalRepository rentalRepository,
            MovieRepository movieRepository,
            CassetteRepository cassetteRepository
    ) {
        this.rentalRepository = rentalRepository;
        this.movieRepository = movieRepository;
        this.cassetteRepository = cassetteRepository;
    }


    public void add(String userId, int movieId) {
        Movie movie = movieRepository.getOne(movieId);
        Cassette cassette = cassetteRepository.findByMovie(movie);
        Rental rental = new Rental(userId, cassette, 20180615, 20180618);
        rentalRepository.save(rental);
    }

    public List<Rental> findRentalsByUserId(String userId){
        return rentalRepository.findRentalsByUserId(userId);
    }
}
