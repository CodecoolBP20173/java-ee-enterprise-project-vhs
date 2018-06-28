package com.vhs.videostore.controller;

import com.auth0.SessionUtils;
import com.vhs.videostore.services.RentalService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class Renting {

    private RentalService rentalService;

    public Renting(RentalService rentalService) {
        this.rentalService = rentalService;
    }

    @RequestMapping(value = "/rent-movie", method = RequestMethod.POST)
    public void rentMovie(
            HttpServletRequest req,
            @RequestParam("movieId") String movieId,
            @RequestParam("userId") String userId) {
        String renter = (String) SessionUtils.get(req, "userId");
        rentalService.add(renter, Integer.parseInt(movieId));
    }
}
