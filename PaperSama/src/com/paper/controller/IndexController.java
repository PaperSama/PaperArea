package com.paper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	@RequestMapping(value="login",method=RequestMethod.GET)
	String login() {
		return "login";
	}
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	String register() {
		return "register";
	}
}