package com.rostyslav.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class CriteriaQuery {
    private String firstName;
    private String lastName;
    private String city;
    private String orderBy;
}
