package com.vhs.videostore.controller;

import com.vhs.videostore.model.User;
import com.vhs.videostore.services.UserPageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class UserPage {

    private UserPageService userPageService;

    public UserPage(UserPageService userPageService) {
        this.userPageService = userPageService;
    }

    @GetMapping(value = "/user/{id}")
    public String userPageUI(Model model, @PathVariable("id") String _id) {

        //context = Utility.loginFromSession(context, req);

        User currentUser = userPageService.getUserByID(Integer.parseInt(_id));

        model.addAttribute("user", currentUser);

        return "userpage";
    }


//    private boolean wrongPath(String path) {
//        if (path == null) return true;
//
//        String[] pathParams = path.split("/");
//        try {
//            Integer.parseInt(pathParams[1]);
//            return pathParams.length != 2;
//        } catch (NumberFormatException e) {
////            e.printStackTrace();
//            return true;
//        }
//    }
}
