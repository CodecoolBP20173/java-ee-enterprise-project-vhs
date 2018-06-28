package com.vhs.videostore.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GetUserId {

    @PostMapping("/logged-in-user-id")
    public int getUserId() {
        return 1;
    }

 /*   @Override
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
    }*/
}
