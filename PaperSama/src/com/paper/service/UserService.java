package com.paper.service;

import com.paper.entity.User;

public interface UserService {
	boolean loginCheck(User user);
	boolean registerNewUser(User user);
	boolean checkName(String username);
}