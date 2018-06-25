package com.vhs.videostore.services;

import com.vhs.videostore.model.User;
import com.vhs.videostore.repository.UserRepository;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

@Service
public class UserPageService {

    private UserRepository userRepository;

    public UserPageService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserByID(int _id){
        return userRepository.getOne(_id);
    }

    public String getHashByEmail(String email) {
        return userRepository.findByEmail(email).getPwd();
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public void add(User userToAdd) {
        userRepository.saveAndFlush(userToAdd);
    }
}
