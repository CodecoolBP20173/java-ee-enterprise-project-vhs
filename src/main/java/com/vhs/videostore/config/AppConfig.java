package com.vhs.videostore.config;

import com.vhs.videostore.controller.Auth0Filter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Component
@Configuration
public class AppConfig {
//    @Value(value = "${com.auth0.domain}")
    private String domain;

//    @Value(value = "${com.auth0.clientId}")
    private String clientId;

//    @Value(value = "${com.auth0.clientSecret}")
    private String clientSecret;

    @Bean
    public FilterRegistrationBean filterRegistration() {
        final FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new Auth0Filter());
        registration.addUrlPatterns("/portal/*");
        registration.setName(Auth0Filter.class.getSimpleName());
        return registration;
    }

    public String getDomain() {
        return "adelkov.eu.auth0.com";
    }

    public String getClientId() {
        return "TplDSmE36t17MYuGirzDhbPDYpcg1vHy";
    }

    public String getClientSecret() {
        return "MffHtKpVERUX4W5L0bvZokpIgylp3OMw_Y3MHkw1puFyLJjiF3NRPHtjeJ7bcbo8";
    }
}
