package com.vhs.videostore.controller;

import com.vhs.videostore.services.EMProvider;
import com.vhs.videostore.services.MainPageService;
import com.vhs.videostore.services.MovieDetailService;
import com.vhs.videostore.services.UserPageService;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class InitializationServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        //super.init();
        EntityManager em = (Persistence.createEntityManagerFactory("VHS_PU")).createEntityManager();
        MainPageService mainPageService = new MainPageService(em);
        MovieDetailService movieDetailService = new MovieDetailService(em);
        UserPageService userPageService = new UserPageService(em);
        MainPage mainPage = new MainPage(mainPageService);
        MovieDetail movieDetail = new MovieDetail(movieDetailService);
        UserPage userPage = new UserPage(userPageService);

        getServletContext().setAttribute("mainPage", mainPage);
        getServletContext().setAttribute("movieDetail", movieDetail);
        getServletContext().setAttribute("userPage", userPage);



    }
}
