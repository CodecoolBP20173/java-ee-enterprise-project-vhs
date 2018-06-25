package com.vhs.videostore.repository;

import com.vhs.videostore.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

// This is how you define basic CRUD operations on the Customer entity
public interface MovieRepository extends JpaRepository<Movie, Long> {
    List<Movie> findById(String lastName);
}
