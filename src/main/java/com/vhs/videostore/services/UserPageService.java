package com.vhs.videostore.services;

import com.vhs.videostore.model.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
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

    public String getHashByEmail(String email) {
        try {
            TypedQuery<User> query = em.createQuery(
                    "SELECT u FROM User u WHERE u.email = :email", User.class
            );
            query.setParameter("email", email);
            return query.getSingleResult().getPwd();
        } catch (NoResultException e) {
            return null;
        }
    }

    public User getUserByEmail(String email) {
        try {
            TypedQuery<User> query = em.createQuery(
                    "SELECT u FROM User u WHERE u.email = :email", User.class
            );
            query.setParameter("email", email);
            return query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public void add(User userToAdd) {
        EntityTransaction transaction = em.getTransaction();
        transaction.begin();
        em.persist(userToAdd);
        transaction.commit();
        System.out.println(userToAdd.getName()+" saved to DB...");
    }
}
