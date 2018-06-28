package com.vhs.videostore.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.thymeleaf.context.WebContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Utility {

    private static final int logRounds = 12;

    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(logRounds));
    }

    public static boolean verifyHash(String password, String hash) {
        if (hash.equals("")) {
            return false;
        }
        return BCrypt.checkpw(password, hash);
    }

//    public static WebContext loginFromSession(WebContext context, HttpServletRequest req) {
//        // LOGIN user from SESSION
//        HttpSession session = req.getSession();
//        if (session.getAttribute("loggedIn") != null) {
//            boolean isLoggedIn = (boolean) session.getAttribute("loggedIn");
//            if (isLoggedIn) {
//                context.setVariable("loggedIn", true);
//                User user = (User) session.getAttribute("user");
//                context.setVariable("user", user);
//                context.setVariable("loginFailed", false);
//            } else {
//                context.setVariable("loggedIn", false);
//                context.setVariable("loginFailed", true);
//            }
//        } else {
//            context.setVariable("loggedIn", false);
//            context.setVariable("loginFailed", false);
//        }
//
//        return context;
//    }


}
