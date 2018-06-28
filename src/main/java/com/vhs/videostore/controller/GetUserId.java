package com.vhs.videostore.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class GetUserId {

    @PostMapping("/logged-in-user-id")
    public String getUserId(HttpServletRequest req) {
        if (req.getSession().getAttribute("userId") != null) {
            return (String) req.getSession().getAttribute("userId");
        }
        return "1";
    }

}
