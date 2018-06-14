package com.vhs.videostore.services;

import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import com.vhs.videostore.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class RentalService {

    private EntityManager em;

    public RentalService(EntityManager em) {
        this.em = em;
    }

    public void add(int userId, int movieId) {
        User user = em.find(User.class, userId);
        Movie movie = em.find(Movie.class, movieId);
        TypedQuery<Cassette> query = em.createQuery(
                "SELECT c FROM Cassette c where c.movie = :movie", Cassette.class
        );
        query.setParameter("movie", movie);
        Cassette cassette = query.getSingleResult();

        Rental rental = new Rental(user, cassette, 10,15);
        user.addRental(rental);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(rental);
        transaction.commit();
        System.out.println(cassette.getMovie().getTitle()+" cassette rental is saved to DB...");
    }
}
