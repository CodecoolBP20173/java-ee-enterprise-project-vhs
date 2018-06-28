package com.vhs.videostore.controller;

import com.vhs.videostore.services.RentalService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Renting {

    private RentalService rentalService;

    public Renting(RentalService rentalService) {
        this.rentalService = rentalService;
    }

    @RequestMapping(value = "/rent-movie", method = RequestMethod.POST)
    public void rentMovie(
            @RequestParam("movieId") String movieId,
            @RequestParam("userId") String userId) {
        rentalService.add(Integer.parseInt(userId), Integer.parseInt(movieId));
    }
}
