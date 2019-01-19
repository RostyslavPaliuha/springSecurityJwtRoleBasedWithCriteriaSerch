package com.rostyslav.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor()
@NoArgsConstructor
public class ContactResponce {
    private String message;
    private Long uid;

    public ContactResponce(String message) {
        this.message = message;
    }
}
