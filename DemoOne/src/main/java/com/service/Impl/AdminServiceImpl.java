package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Admin;
import com.mapper.AdminMapper;
import com.service.AdminService;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper AdminMapperDao;//”√ªß
			
	@Override
	public List<Admin> findAll() {
		List<Admin> list=AdminMapperDao.findAll();
				return list;
	}

	@Override
	public List<Admin> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuser(Admin gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void del(Admin gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertuser(Admin gs) {
		AdminMapperDao.insertuser(gs);
		
	}

	@Override
	public Integer count(Admin gs) {
		Integer list=AdminMapperDao.count(gs);
		return list;
	}

	

}
