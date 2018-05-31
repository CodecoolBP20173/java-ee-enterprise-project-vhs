package com.vhs.videostore.config.testdata;

import com.vhs.videostore.model.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.*;

public class DataFiller {

    private EntityManager em;

    public DataFiller(EntityManager em) {
        this.em = em;
    }

    public void fillMoviesTable(){
        List<Tag> tagList1 = new ArrayList<>(Arrays.asList(Tag.COMEDY, Tag.ROMANCE));
        List<Tag> tagList2 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.CULTURE, Tag.SUPERHERO));
        Movie movie1 = new Movie("Jumanji", new Date(1990, 10,10), 10, tagList1);
        Movie movie2 = new Movie("Star Wars", new Date(2100, 10, 10), 14, tagList2);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(movie1);
        em.persist(movie2);
        transaction.commit();
    }

    public void fillUserTable() {
        User adminAdel = new User("Adél", "adel@admins.vhs.com", "Almafa12");

        User adminPeti = new User("Peti", "peti@admins.vhs.com", "MyPWD");


        User adminAlex = new User("Alex", "alex@admins.vhs.com", "pwd");

        setupSampleUser(adminAlex);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();

        em.persist(adminAdel);
        em.persist(adminPeti);
        em.persist(adminAlex);

        transaction.commit();
    }

    private void setupSampleUser(User sampleUser) {

        Movie movie = new Movie();
        movie.setTitle("24H of Le Mans 2018");

        Movie movie2 = new Movie();
        movie2.setTitle("Black cat, white cat");


        EntityTransaction transaction = em.getTransaction();
        transaction.begin();

        em.persist(movie);
        em.persist(movie2);

        Cassette cassette = new Cassette();
        cassette.setMovie(movie);

        Cassette cassette2 = new Cassette();
        cassette2.setMovie(movie2);

        em.persist(cassette);
        em.persist(cassette2);

        Rental rental = new Rental();

        rental.addCassette(cassette);
        rental.addCassette(cassette2);

        em.persist(rental);

        sampleUser.addRental(rental);

        em.persist(sampleUser);

        transaction.commit();
    }
}
