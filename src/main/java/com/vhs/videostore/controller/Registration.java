//package com.vhs.videostore.controller;
//
//import com.vhs.videostore.services.UserPageService;
//import org.springframework.stereotype.Component;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//
//@Component
//public class Registration {
//
//    private UserPageService userPageService;
//
////    public Registration(UserPageService userPageService) {
////        this.userPageService = userPageService;
////    }
//
//    @RequestMapping(value = "/register", method= RequestMethod.POST)
//    public String registerMe(
////            @RequestParam("username"),
////            @RequestParam("password")
//    ) {
//        return "index";
//    }
//
////    @Override
////    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////
////
////
////        String name = req.getParameter("name");
////        String email = req.getParameter("email");
////        String password = req.getParameter("password");
////
////
////        String hash_password = Utility.hash(password);
////        User userToAdd = new User(name, email, hash_password);
////        userPageService.add(userToAdd);
////
////        System.out.println(userToAdd.getEmail());
////        System.out.println(session.getLastAccessedTime());
////        // auto login after registration
////        session.setAttribute("loggedIn", true);
////        session.setAttribute("userId", userToAdd.getId());
////        session.setAttribute("orderId", null);
////        session.setAttribute("user", userToAdd);
////
////        System.out.println("logged in as " + userToAdd.getName());
////
////        resp.sendRedirect("/");
////    }
//}
