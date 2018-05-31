package com.vhs.videostore.config.testdata;

import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.SpecialOffer;
import com.vhs.videostore.model.Tag;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class DataFiller {

    private EntityManager em;

    public DataFiller(EntityManager em) {
        this.em = em;
    }

    public void fillMoviesTable(){
        List<Tag> tagList1 = new ArrayList<>(Arrays.asList(Tag.COMEDY, Tag.ROMANCE));
        List<Tag> tagList2 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.CULTURE, Tag.SUPERHERO));
        List<Tag> tagList3 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.SUPERHERO));
        List<Tag> tagList4 = new ArrayList<>(Arrays.asList(Tag.COMEDY));

        Movie movie1 = new Movie("Jumanji", new Date(1990, 10,10), 10, tagList1);
        Movie movie2 = new Movie("Star Wars", new Date(2100, 10, 10), 14, tagList2);
        Movie movie3 = new Movie("Harry Potter and the Goblet of Fire", new Date(2000, 10,10), 4, tagList3);
        Movie movie4 = new Movie("Clueless", new Date(1992, 10,10), 32, tagList4);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(movie1);
        em.persist(movie2);
        em.persist(movie3);
        em.persist(movie4);
        transaction.commit();
    }

    public void fillSpecialOffersTable() {
        List<Tag> tagList1 = new ArrayList<>(Arrays.asList(Tag.COMEDY, Tag.ROMANCE));
        List<Tag> tagList2 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.CULTURE, Tag.SUPERHERO));
        List<Tag> tagList3 = new ArrayList<>(Arrays.asList(Tag.NATURE, Tag.SUPERHERO));
        Movie movie1 = new Movie("Fight club", new Date(1990, 10,10), 10, tagList1);
        Movie movie2 = new Movie("Almost famous", new Date(2100, 10, 10), 14, tagList2);
        Movie movie3 = new Movie("One flew over the cuckoo's nest", new Date(2000, 10,10), 4, tagList3);

        SpecialOffer specialOffer1 = new SpecialOffer(1, movie1, new Date(2000,12,12), new Date(2020,2,2));
        SpecialOffer specialOffer2 = new SpecialOffer(12, movie1, new Date(2000,12,12), new Date(2020,2,2));
        SpecialOffer specialOffer3 = new SpecialOffer(10, movie1, new Date(2000,12,12), new Date(2020,2,2));

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(movie1);
        em.persist(movie2);
        em.persist(movie3);
        em.persist(specialOffer1);
        em.persist(specialOffer2);
        em.persist(specialOffer3);
        transaction.commit();

    }
}
