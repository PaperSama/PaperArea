package com.paper.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.paper.entity.User;
import com.paper.service.impl.UserServiceImpl;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	UserServiceImpl userService;
	
	void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	
	@RequestMapping("login")
	ModelAndView login(HttpServletRequest request, @RequestParam("username") String username, @RequestParam("password") String password) {
		
		User user = new User(0, username, password);
		
		boolean flag = userService.loginCheck(user);
		
		ModelAndView mv = null;
		
		request.getSession().setAttribute("username", username);
		
		if(flag) {
			mv = new ModelAndView("redirect:/.");
		}else {
			mv = new ModelAndView("login");
			mv.addObject("errMsg","用户名或密码错误");
		}
		
		return mv;
	}
}