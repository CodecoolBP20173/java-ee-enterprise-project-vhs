package com.vhs.videostore.controller;

import org.mindrot.jbcrypt.BCrypt;

public class Utility {

    private static final int logRounds = 12;

    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(logRounds));
    }

    public static boolean verifyHash(String password, String hash) {
        return BCrypt.checkpw(password, hash);
    }
}
