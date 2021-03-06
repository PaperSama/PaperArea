package com.paper.mapper;

import java.util.ArrayList;

import com.paper.entity.User;

public interface UserMapper {
	ArrayList<User> queryAllUser();
	boolean addNewUser(User user);
	String userNameExist(String username);
	int queryIdByUsername(String username);
}