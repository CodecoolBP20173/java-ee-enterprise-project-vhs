package com.vhs.videostore.repository;

import com.vhs.videostore.model.SpecialOffer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpecialOfferRepository extends JpaRepository<SpecialOffer, Integer> {
}
