package com.service;

import java.util.List;

import com.entity.user;

public interface userService {
	public List<user> selectuser(user users);
	public List<user> findAll();
}
