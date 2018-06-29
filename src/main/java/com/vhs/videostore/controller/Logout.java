package com.vhs.videostore.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@SuppressWarnings("unused")
@Controller
public class Logout{

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    protected String logout(final HttpServletRequest req) {
        logger.debug("Performing logout");
        invalidateSession(req);
        return "redirect:" + req.getContextPath() + "/";
    }

    private void invalidateSession(HttpServletRequest request) {
        if (request.getSession() != null) {
            request.getSession().invalidate();
        }
    }
}
