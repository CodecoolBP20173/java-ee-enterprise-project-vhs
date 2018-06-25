package com.vhs.videostore.repository;

import com.vhs.videostore.model.Cassette;
import com.vhs.videostore.model.Movie;
import com.vhs.videostore.model.Rental;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

// This is how you define basic CRUD operations on the Customer entity
public interface CassetteRepository extends JpaRepository<Cassette, Long> {


/*  Want to test it later
  @Query("SELECT c FROM Cassette c where c.movie.title = :movieTitle")
    Cassette findByMovie(@Param("movieTitle") String movieTitle);*/

    Cassette findByMovie(Movie movie);
}