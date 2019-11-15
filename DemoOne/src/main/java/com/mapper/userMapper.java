package com.mapper;

import java.util.List;

import com.entity.user;

public interface userMapper {
	public List<user> selectuser(user users);
	public void updateuser(user users);
	public List<user> findAll();
	public void insertuser(user users);
	public void deleteuser(user users);
}
