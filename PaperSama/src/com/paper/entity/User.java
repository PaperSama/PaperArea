package com.paper.entity;

import java.sql.Timestamp;

public class User {
	private int id;
	private String username;
	private String password;
	private Timestamp register_time;
	public User() {
	}
	public User(int id, String username, String password) {
		this.id = id;
		this.username = username;
		this.password = password;
	}
	public User(int id, String username, String password, Timestamp timestamp) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.register_time = timestamp;
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
	public Timestamp getRegister_time() {
		return register_time;
	}
	public void setRegister_time(Timestamp register_time) {
		this.register_time = register_time;
	}
}
