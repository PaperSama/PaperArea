package com.paper.entity;

import java.util.Date;

public class User {
	private int id;
	private String username;
	private String password;
	private Date register_time;
	public User() {
	}
	public User(int id, String username, String password, Date register_time) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.register_time = register_time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getRegister_time() {
		return register_time;
	}
	public void setRegister_time(Date register_time) {
		this.register_time = register_time;
	}
}