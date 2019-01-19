package com.rostyslav.service;

import com.rostyslav.dto.UserDto;
import com.rostyslav.entity.user.User;

import java.util.List;

public interface UserService {

    User save(UserDto user);

    List<User> findAll();

    void delete(long id);

    User findOne(String username);

    User findById(Long id);
}
