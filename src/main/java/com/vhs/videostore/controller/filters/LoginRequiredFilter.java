package com.vhs.videostore.controller.filters;

import org.thymeleaf.context.WebContext;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginRequiredFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        if (session.getAttribute("userId") == null) {
            chain.doFilter(request,response);
        } else {
            ((HttpServletResponse) response).sendRedirect("/");
        }
    }

    @Override
    public void destroy() {

    }
}