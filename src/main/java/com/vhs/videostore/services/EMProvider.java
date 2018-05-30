package com.vhs.videostore.services;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class EMProvider {

    private static EntityManager em;

    private EMProvider(EntityManager em) {
        this.em = em;
    }

    public static EntityManager getEntityManagerInstance() {
        if (em == null) {
            em = (Persistence.createEntityManagerFactory("VHS_PU")).createEntityManager();
        }
        return em;
    }
}
