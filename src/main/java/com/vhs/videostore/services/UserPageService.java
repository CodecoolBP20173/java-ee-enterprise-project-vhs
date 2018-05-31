package com.vhs.videostore.services;

import com.vhs.videostore.model.User;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

public class UserPageService {

    public static User getUserByID(int _id) throws NoResultException {
        EntityManager em = EMProvider.getEntityManagerInstance();
        TypedQuery<User> query = em.createQuery(
                "SELECT u FROM User u WHERE u.id = :userID", User.class
        );
        query.setParameter("userID", _id);
        return query.getSingleResult();
    }
}
