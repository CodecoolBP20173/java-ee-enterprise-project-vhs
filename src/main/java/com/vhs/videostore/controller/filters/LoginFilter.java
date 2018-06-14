package com.vhs.videostore.controller.filters;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest httpRequest = ((HttpServletRequest) request);
        HttpServletResponse httpResponse = ((HttpServletResponse) response);

        HttpSession session = httpRequest.getSession();

        if (anyUserLoggedIn(session)) {
            String userId = session.getAttribute("userId").toString();
            if (httpRequest.getPathInfo() == null) {
                System.out.println("No user ID was given!");
                httpResponse.sendRedirect("/");
            } else {
                String[] path = httpRequest.getPathInfo().split("/");
                String requestUserId = (path.length > 0) ? path[1] : "";

                if (validUserId(userId) && sameUser(userId, requestUserId)) {
                    chain.doFilter(request, response);
                } else {
                    System.out.println("User IDs are not matching or not valid user ID!");
                    httpResponse.sendRedirect("/");
                }
            }
        } else {
            System.out.println("No user logged in!");
            httpResponse.sendRedirect("/");
        }
    }

    private boolean anyUserLoggedIn(HttpSession session) {
        return (session.getAttribute("userId") != null);
    }

    private boolean sameUser(String userId, String requestUserId) {
        return userId.equals(requestUserId);
    }

    private boolean validUserId(String userId) {
        try {
            Integer.parseInt(userId);
        } catch (NumberFormatException e) {
            return false;
        }
        return true;
    }

    @Override
    public void destroy() {
    }
}
