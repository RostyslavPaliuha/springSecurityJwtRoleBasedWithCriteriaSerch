package com.rostyslav.dto;

import lombok.Data;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
@Data
public class AuthToken {
    private String message;
    private String token;
    private LocalDateTime expiresAt;

    public AuthToken() {

    }

    public AuthToken(String token) {
        this.token = token;
        this.message = "success";
        this.expiresAt = LocalDateTime.now().plus(30, ChronoUnit.MINUTES);
    }

}
