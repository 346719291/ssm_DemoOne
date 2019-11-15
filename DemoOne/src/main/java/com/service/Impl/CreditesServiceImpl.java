package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Credites;
import com.mapper.CreditesMapper;
import com.service.CreditesService;
@Service("CreditesService")
public class CreditesServiceImpl implements CreditesService{

	@Autowired
	public CreditesMapper CreditesMapperDao;//»ý·Ö
	@Override
	public List<Credites> findAll() {
		List<Credites> list=CreditesMapperDao.findAll();
		return list;
	}

	@Override
	public List<Credites> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuser(Credites gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void del(Credites gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertuser(Credites gs) {
		CreditesMapperDao.insertuser(gs);
		
	}

}
