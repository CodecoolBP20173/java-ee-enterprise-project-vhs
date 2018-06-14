package com.vhs.videostore.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class GetUserId extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userId = 0;
        HttpSession session = req.getSession();
        try {
            userId = (int) session.getAttribute("userId");
        } catch (NullPointerException e) {
            System.out.println("User is not logged in");
        } finally {
            resp.getOutputStream().print(userId);
        }
    }
}
