package com.vhs.videostore.controller;

import com.auth0.IdentityVerificationException;
import com.auth0.SessionUtils;
import com.auth0.Tokens;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.auth0.jwt.interfaces.RSAKeyProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

@Controller
public class CallbackController {

    @Autowired
    private AuthController controller;
    private final String redirectOnFail;
    private final String redirectOnSuccess;

    public CallbackController() {
        this.redirectOnFail = "/login";
        this.redirectOnSuccess = "/";
    }

    @RequestMapping(value = "/callback", method = RequestMethod.GET)
    protected void getCallback(final HttpServletRequest req, final HttpServletResponse res) throws ServletException, IOException {
        handle(req, res);
    }

    @RequestMapping(value = "/callback", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    protected void postCallback(final HttpServletRequest req, final HttpServletResponse res) throws ServletException, IOException {
        handle(req, res);
    }

    protected void handle(final HttpServletRequest req, final HttpServletResponse res) throws ServletException, IOException {
        try {
            Tokens tokens = controller.handle(req);
            SessionUtils.set(req, "accessToken", tokens.getAccessToken());
            SessionUtils.set(req, "idToken", tokens.getIdToken());
            String token = tokens.getIdToken();
            final JwkStore jwkStore = new JwkStore("{JWKS_FILE_HOST}");
            final RSAPrivateKey privateKey = null;//Get the key instance
            final String privateKeyId = null;//Create an Id for the above key

            RSAKeyProvider keyProvider = new RSAKeyProvider() {
                @Override
                public RSAPublicKey getPublicKeyById(String kid) {
                    //Received 'kid' value might be null if it wasn't defined in the Token's header
                    RSAPublicKey publicKey = jwkStore.get(kid);
                    return (RSAPublicKey) publicKey;
                }

                @Override
                public RSAPrivateKey getPrivateKey() {
                    return privateKey;
                }

                @Override
                public String getPrivateKeyId() {
                    return privateKeyId;
                }
            };
            RSAPublicKey publicKey = null;//Get the key instance
            RSAPrivateKey privateKey = null; //Get the key instance
            try {
                Algorithm algorithm = Algorithm.RSA256(publicKey, privateKey);
                JWTVerifier verifier = JWT.require(algorithm)
                        .withIssuer("auth0")
                        .build(); //Reusable verifier instance
                DecodedJWT jwt = verifier.verify(token);
                System.out.println(jwt.getSubject());
            } catch (JWTVerificationException exception) {
                //Invalid signature/claims
            }
            res.sendRedirect("/");
        } catch (IdentityVerificationException e) {
            res.sendRedirect("/login");
        }
    }


}
