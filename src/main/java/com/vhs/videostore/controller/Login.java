package com.vhs.videostore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class Login {

    @Autowired
    private AuthController controller;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    protected String login(final HttpServletRequest req) {
        String redirectUri = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + "/callback";
        String authorizeUrl = controller.buildAuthorizeUrl(req, redirectUri);
        return "redirect:" + authorizeUrl;
    }
}
//
//import com.vhs.videostore.services.UserPageService;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.stereotype.Controller;
//
//
//@Controller
//public class Login {
//
//    private UserPageService userPageService;
//
//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String login(
//            @RequestParam("email") String email,
//            @RequestParam("password") String password
//    ) {
//        String hash = userPageService.getHashByEmail(email);
//
//        return "index";
//    }
//
////    public Login(UserPageService userPageService) {
////        this.userPageService = userPageService;
////    }
////
////    @Override
////    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
////        TemplateEngine engine = TemplateEngineUtil.getTemplateEngine(req.getServletContext());
////        WebContext context = new WebContext(req, resp, req.getServletContext());
////        HttpSession session = context.getSession();
////
////        String email = null;
////        String password = null;
////        String hash = null;
////
////        email = req.getParameter("email");
////        password = req.getParameter("password");
////        hash = userPageService.getHashByEmail(email);
////
////        boolean isVerified = Utility.verifyHash(password, hash);
////        if (isVerified) {
////            User userLoggedIn = userPageService.getUserByEmail(email);
////            session.setAttribute("loggedIn", true);
////            session.setAttribute("userId", userLoggedIn.getId());
////            session.setAttribute("orderId", null);
////            session.setAttribute("user", userLoggedIn);
////            System.out.println("logged in as " + userLoggedIn.getName());
////        } else {
////            session.setAttribute("loggedIn", false);
////            System.out.println("login failed");
////        }
////        resp.sendRedirect("/");
////    }
//
//
//}
