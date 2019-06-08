package com.paper.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.paper.service.impl.UserServiceImpl;

@RestController
@RequestMapping("ajax")
public class AjaxController {
	
	@Autowired
	UserServiceImpl userService;
	
	void setUserService(UserServiceImpl userService){
		this.userService = userService;
	}
	
	@RequestMapping(value="checkName",produces={"text/html;charset=UTF-8;","application/json;"})
	String checkName(HttpServletRequest request) {
		String username = request.getParameter("arg");
		return userService.checkName(username)?"":"× 此用户名已被使用";
	}
}