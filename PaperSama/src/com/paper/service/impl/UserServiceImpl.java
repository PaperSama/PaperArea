package com.paper.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paper.entity.User;
import com.paper.mapper.UserMapper;
import com.paper.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	void setUserMapper(UserMapper userMapper){
		this.userMapper = userMapper;
	}
	
	@Override
	public boolean loginCheck(User userNow) {
		ArrayList<User> al = userMapper.queryAllUser();
		boolean flag = false;
		for(User user : al) {
			if(userNow.getUsername().equals(user.getUsername()) && userNow.getPassword().equals(user.getPassword())) {
				flag = true;
			}
		}
		return flag;
	}

}