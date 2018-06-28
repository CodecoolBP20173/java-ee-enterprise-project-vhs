package com.vhs.videostore.controller;

//import com.vhs.videostore.services.UserPageService;

import com.vhs.videostore.model.Rental;
import com.vhs.videostore.services.RentalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class UserPage {

    @Autowired
    private RentalService rentalService;

    public UserPage(RentalService rentalService) {
        this.rentalService = rentalService;
    }

    @GetMapping(value = "/user/{id}")
    public String userPageUI(Model model, @PathVariable("id") String _id) {

        //context = Utility.loginFromSession(context, req);

//        User currentUser = userPageService.getUserByID(Integer.parseInt(_id));
        List<Rental> rentalList = rentalService.findRentalsByUserId(_id);
        model.addAttribute("rentals", rentalList);
        model.addAttribute("userId", _id);
        model.addAttribute("loggedIn", "true");

        return "userpage";
    }
}
