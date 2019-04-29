package com.paper.entity;

import java.util.Date;

public class Topic {
	private int id;
	private String title;
	private String chat;
	private Date time;
	private int user;
	public Topic() {
	}
	public Topic(int id, String title, String chat, Date time, int user) {
		this.id = id;
		this.title = title;
		this.chat = chat;
		this.time = time;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getChat() {
		return chat;
	}
	public void setChat(String chat) {
		this.chat = chat;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
}