package com.vhs.videostore.services;

import com.vhs.videostore.model.User;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class UserPageService {

    private EntityManager em;

    public UserPageService(EntityManager em) {
        this.em = em;
    }

    public User getUserByID(int _id) throws NoResultException {
        TypedQuery<User> query = em.createQuery(
                "SELECT u FROM User u WHERE u.id = :userID", User.class
        );
        query.setParameter("userID", _id);
        return query.getSingleResult();
    }
}
