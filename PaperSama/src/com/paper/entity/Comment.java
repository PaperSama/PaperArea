package com.paper.entity;

import java.sql.Timestamp;

public class Comment {
	private int id;
	private String context;
	private Timestamp datetime;
	private String re;
	private boolean hide;
	private int user;
	public Comment() {

	}
	public Comment(String context, Timestamp datetime, int user) {
		this.context = context;
		this.datetime = datetime;
		this.user = user;
	}
	public Comment(int id, String context, Timestamp datetime, String re, boolean hide, int user) {
		this.id = id;
		this.context = context;
		this.datetime = datetime;
		this.re = re;
		this.hide = hide;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Timestamp getDatetime() {
		return datetime;
	}
	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}
	public String getRe() {
		return re;
	}
	public void setRe(String re) {
		this.re = re;
	}
	public boolean isHide() {
		return hide;
	}
	public void setHide(boolean hide) {
		this.hide = hide;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
}