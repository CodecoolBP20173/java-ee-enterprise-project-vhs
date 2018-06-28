package com.vhs.videostore.testdata;

import com.vhs.videostore.model.*;
import com.vhs.videostore.repository.CassetteRepository;
import com.vhs.videostore.services.MovieDetailService;
import com.vhs.videostore.services.UserPageService;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.*;

@Component
public class InitializerBean {

    public InitializerBean(MovieDetailService movieDetailService, CassetteRepository cassetteRepository, UserPageService ups) {
        fillMoviesTable(movieDetailService, cassetteRepository);
        fillUserTable(ups);
    }

    public void fillMoviesTable(MovieDetailService movieDetailService, CassetteRepository cassetteRepository){
        List<Tag> tagList1 = new ArrayList<>(Arrays.asList(Tag.COMEDY, Tag.ROMANCE));
        List<Tag> tagList2 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.CULTURE, Tag.SUPERHERO));
        List<Tag> tagList3 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.SUPERHERO));
        List<Tag> tagList4 = new ArrayList<>(Arrays.asList(Tag.COMEDY));

        Movie movie1 = new Movie("Fight club", 1990, 10, tagList1);
        Movie movie2 = new Movie("Almost famous",2100, 14, tagList2);
        Movie movie3 = new Movie("One flew over the cuckoo's nest", 2000,  4, tagList3);
        Movie movie4 = new Movie("Clueless", 1992, 32, tagList4);

        movieDetailService.saveMOvie(movie1);
        movieDetailService.saveMOvie(movie2);
        movieDetailService.saveMOvie(movie3);
        movieDetailService.saveMOvie(movie4);

        Cassette cassette1= new Cassette();
        cassette1.setMovie(movie1);
        Cassette cassette2= new Cassette();
        cassette2.setMovie(movie2);
        Cassette cassette3= new Cassette();
        cassette3.setMovie(movie3);
        Cassette cassette4= new Cassette();
        cassette4.setMovie(movie4);

        cassetteRepository.save(cassette1);
        cassetteRepository.save(cassette2);
        cassetteRepository.save(cassette3);
        cassetteRepository.save(cassette4);
    }


    /*public void fillSpecialOffersTable() {
        List<Tag> tagList1 = new ArrayList<>(Arrays.asList(Tag.COMEDY, Tag.ROMANCE));
        List<Tag> tagList2 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.CULTURE, Tag.SUPERHERO));
        List<Tag> tagList3 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.SUPERHERO));
        Movie movie1 = new Movie("Jumanji",1990,  10, tagList1);
        Movie movie2 = new Movie("Star Wars",2100,  14, tagList2);
        Movie movie3 = new Movie("Harry Potter and the Goblet of Fire", 2000, 4, tagList3);


        SpecialOffer specialOffer1 = new SpecialOffer(1, movie1, new Date(2000,12,12), new Date(2010,2,2));
        SpecialOffer specialOffer2 = new SpecialOffer(12, movie2, new Date(2000,12,12), new Date(2020,2,2));
        SpecialOffer specialOffer3 = new SpecialOffer(10, movie3, new Date(2000,12,12), new Date(2020,2,2));

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(movie1);
        em.persist(movie2);
        em.persist(movie3);
        em.persist(specialOffer1);
        em.persist(specialOffer2);
        em.persist(specialOffer3);
        transaction.commit();

    } */

    public void fillUserTable(UserPageService ups) {
        User adminAdel = new User("Adel", "adel@admins.vhs.com", "Almafa12");

        User adminPeti = new User("Peti", "peti@admins.vhs.com", "MyPWD");

        User adminAlex = new User("Alex", "alex@admins.vhs.com", "pwd");

        ups.add(adminAdel, adminPeti, adminAlex);
    }

    /*
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
    }*/
}
