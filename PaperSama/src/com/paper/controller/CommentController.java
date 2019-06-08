package com.paper.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.paper.entity.Comment;
import com.paper.service.impl.CommentServiceImpl;

@Controller
@RequestMapping("comment")
public class CommentController {
	@Autowired
	CommentServiceImpl commentService;
	
	void setCommentServcie(CommentServiceImpl commentService) {
		this.commentService = commentService;
	}
	
	@RequestMapping("add")
	ModelAndView add(@RequestParam("comment") String context, @RequestParam("username") String username) {
		commentService.addComment(context, username);
		ModelAndView mv = new ModelAndView("redirect:/.");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("show")
	ArrayList<Comment> show() {
		return commentService.queryAllComment();
	}
}