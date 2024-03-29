package com.vhs.videostore.controller;

import com.vhs.videostore.config.AppConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.auth0.AuthenticationController;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Login {

    @Autowired
    private AuthenticationController controller;

    @Autowired
    private AppConfig appConfig;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    protected String login(final HttpServletRequest req) {
        String redirectUri = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + "/callback";
        String authorizeUrl = controller.buildAuthorizeUrl(req, redirectUri)
                .withAudience(String.format("https://%s/userinfo", appConfig.getDomain()))
                .build();
        return "redirect:" + authorizeUrl;
    }
}
