package com.paper.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class WelcomeController {
	
	@RequestMapping("login")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("topiclist");
		mv.addObject("topics",new Object());
		return mv;
	}
}