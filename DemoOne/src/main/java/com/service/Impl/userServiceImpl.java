package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.user;
import com.mapper.userMapper;
import com.service.userService;
@Service("userService")
public class userServiceImpl implements userService{
	@Autowired
	private userMapper userDao;
	@Override
	public List<user> selectuser(user users) {
		List<user> list= userDao.selectuser(null);
		return list;
	}
	@Override
	public List<user> findAll() {
		List<user> userlist=userDao.findAll();
		return userlist;
	}

}
