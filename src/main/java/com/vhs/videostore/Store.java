package com.vhs.videostore;

import com.vhs.videostore.config.testdata.DataFiller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Store {

    public static void main(String[] args) {
        Store vhsStore = new Store();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("VHS_PU");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        DataFiller df = new DataFiller(entityManager);
        df.fillMoviesTable();
        df.fillUserTable();
        entityManager.close();
        entityManagerFactory.close();
    }
}
