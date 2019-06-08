package com.paper.service;

import java.util.ArrayList;

import com.paper.entity.Comment;

public interface CommentService {
	ArrayList<Comment> queryAllComment();
	boolean addComment(String context, String username);
	boolean reCommment(Comment comment);
	boolean hideComment(int id);
}