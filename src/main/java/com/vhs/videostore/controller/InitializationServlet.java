package com.vhs.videostore.controller;

import com.vhs.videostore.services.*;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class InitializationServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
        EntityManager em = (Persistence.createEntityManagerFactory("VHS_PU")).createEntityManager();
        MainPageService mainPageService = new MainPageService(em);
        MovieDetailService movieDetailService = new MovieDetailService(em);
        UserPageService userPageService = new UserPageService(em);
        RentalService rentalService = new RentalService(em);

        MainPage mainPage = new MainPage(mainPageService);
        MovieDetail movieDetail = new MovieDetail(movieDetailService);
        UserPage userPage = new UserPage(userPageService);
        Login login = new Login(userPageService);
        Registration registration = new Registration(userPageService);
        Renting renting = new Renting(rentalService);

        getServletContext().setAttribute("mainPage", mainPage);
        getServletContext().setAttribute("movieDetail", movieDetail);
        getServletContext().setAttribute("userPage", userPage);
        getServletContext().setAttribute("login", login);
        getServletContext().setAttribute("registration", registration);
        getServletContext().setAttribute("renting", renting);



    }
}
