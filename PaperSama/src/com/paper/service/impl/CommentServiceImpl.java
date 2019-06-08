package com.paper.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paper.entity.Comment;
import com.paper.mapper.CommentMapper;
import com.paper.mapper.UserMapper;
import com.paper.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentMapper commentMapper;
	
	void setCommentMapper(CommentMapper commentMapper){
		this.commentMapper = commentMapper;
	}
	
	@Autowired
	UserMapper userMapper;
	
	void setUserMapper(UserMapper userMapper){
		this.userMapper = userMapper;
	}
	
	@Override
	public ArrayList<Comment> queryAllComment() {
		ArrayList<Comment> al = commentMapper.queryAllComment();
		ArrayList<Comment> alHide = new ArrayList<Comment>();
		for(Comment comment : al) {
			if(!comment.isHide()) {
				alHide.add(comment);
			}
		}
		return alHide;
	}

	@Override
	public boolean addComment(String context, String username) {
		int id = userMapper.queryIdByUsername(username);
		Comment comment = new Comment(context,new Timestamp(new Date().getTime()),id);
		return commentMapper.addNewComment(comment);
	}

	@Override
	public boolean reCommment(Comment comment) {
		return commentMapper.addRe(comment);
	}

	@Override
	public boolean hideComment(int id) {
		return commentMapper.hideComment(id);
	}

}
