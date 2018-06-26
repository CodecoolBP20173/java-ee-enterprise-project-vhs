package com.vhs.videostore.services;

import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import com.vhs.videostore.model.User;
import com.vhs.videostore.repository.CassetteRepository;
import com.vhs.videostore.repository.MovieRepository;
import com.vhs.videostore.repository.RentalRepository;
import com.vhs.videostore.repository.UserRepository;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

@Service
public class RentalService {

    RentalRepository rentalRepository;
    UserRepository userRepository;
    MovieRepository movieRepository;
    CassetteRepository cassetteRepository;

    public RentalService(RentalRepository rentalRepository, UserRepository userRepository,
                         MovieRepository movieRepository, CassetteRepository cassetteRepository) {
        this.rentalRepository = rentalRepository;
        this.userRepository = userRepository;
        this.movieRepository = movieRepository;
        this.cassetteRepository = cassetteRepository;
    }

    public void add(int userId, int movieId) {
        User user = userRepository.getOne(userId);
        Movie movie = movieRepository.getOne(movieId);
        Cassette cassette = cassetteRepository.findByMovie(movie);
        Rental rental = new Rental(user, cassette, 20180615, 20180618);
        rentalRepository.save(rental);
        System.out.println(cassette.getMovie().getTitle() + " cassette rental is saved to DB...");
    }
}
