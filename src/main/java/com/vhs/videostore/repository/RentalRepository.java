package com.vhs.videostore.repository;

import com.vhs.videostore.model.Rental;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface RentalRepository extends JpaRepository<Rental, Long> {
    List<Rental> findRentalsByUserId(String userId);
}