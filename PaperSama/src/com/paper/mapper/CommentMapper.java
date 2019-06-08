package com.paper.mapper;

import java.util.ArrayList;

import com.paper.entity.Comment;

public interface CommentMapper {
	ArrayList<Comment> queryAllComment();
	Comment queryCommentById(int id);
	boolean addNewComment(Comment comment);
}