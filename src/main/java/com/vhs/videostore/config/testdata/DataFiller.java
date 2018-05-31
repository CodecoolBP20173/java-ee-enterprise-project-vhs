package com.vhs.videostore.config.testdata;

import com.vhs.videostore.model.Movie;
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
        Movie movie1 = new Movie("Jumanji", 1990, 10, tagList1);
        Movie movie2 = new Movie("Star Wars", 2100, 14, tagList2);

        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(movie1);
        em.persist(movie2);
        transaction.commit();
    }
}
