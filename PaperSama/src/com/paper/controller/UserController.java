package com.paper.controller;

import java.util.Date;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value="login",method=RequestMethod.POST)
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
	
	@RequestMapping(value="login")
	String login() {
		return "redirect:/login";
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	ModelAndView register(HttpServletRequest request, @RequestParam("username") String username, @RequestParam("password") String password) {
		ModelAndView mv;
		if(username == null || "".equals(username)) {
			mv = new ModelAndView("register");
			mv.addObject("errMsg","用户名不得为空");
			return mv;
		}else if(password == null || "".equals(password)) {
			mv = new ModelAndView("register");
			mv.addObject("errMsg","密码不得为空");
			return mv;
		}
		boolean flag = userService.registerNewUser(new User(0, username, password, new Timestamp(new Date().getTime())));
		if(flag) {
			mv = new ModelAndView("redirect:/.");
			request.getSession().setAttribute("username", username);
		}else {
			mv = new ModelAndView("register");
			mv.addObject("errMsg","账户已存在");
		}
		return mv;
	}
	
	@RequestMapping(value="register")
	String register() {
		return "redirect:/register";
	}
	
	
}