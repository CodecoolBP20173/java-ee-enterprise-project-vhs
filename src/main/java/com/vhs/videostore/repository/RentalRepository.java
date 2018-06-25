package com.vhs.videostore.repository;

import com.vhs.videostore.model.Rental;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RentalRepository extends JpaRepository<Rental, Long> {


}