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
        HttpSession session = ((HttpServletRequest) request).getSession();
        if (Integer.parseInt(session.getAttribute("userId").toString()) ==
                (Integer.parseInt(((HttpServletRequest) request).getPathInfo().split("/")[1]))) {
            chain.doFilter(request, response);
        } else {
            ((HttpServletResponse) response).sendRedirect("/");
        }
    }

    @Override
    public void destroy() {
    }
}
