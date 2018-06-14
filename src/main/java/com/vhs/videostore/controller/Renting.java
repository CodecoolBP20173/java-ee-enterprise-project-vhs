package com.vhs.videostore.controller;

import com.vhs.videostore.services.RentalService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Renting extends HttpServlet {

    private RentalService rentalService;

    public Renting(RentalService rentalService) {
        this.rentalService = rentalService;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         int movieId = Integer.parseInt(req.getParameter("movieId"));
         int userId = Integer.parseInt(req.getParameter("userId"));
         rentalService.add(userId, movieId);
    }

    public RentalService getRentalService() {
        return rentalService;
    }

    public void setRentalService(RentalService rentalService) {
        this.rentalService = rentalService;
    }
}
