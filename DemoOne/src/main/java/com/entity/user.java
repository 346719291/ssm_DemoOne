package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Basesuser")
public class user {
	private String id;
	private String username;
	private Integer sex;
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}
	public user(String id, String username, Integer sex) {
		super();
		this.id = id;
		this.username = username;
		this.sex = sex;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", username=" + username + ", sex=" + sex + "]";
	}
	
}
