package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.TbOut;
import com.mapper.TbOutMapper;
import com.service.TbOutService;

@Service("TbOutService")
public class TbOutServiceImpl implements TbOutService{

	@Autowired
	private TbOutMapper TbOutDao;//³ö¿â±í
	@Override
	public List<TbOut> findAll() {
		List<TbOut> list=TbOutDao.findAll();
		return list;
	}

	@Override
	public List<TbOut> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuser(TbOut gs) {
		TbOutDao.updateuser(gs);
		
	}

	@Override
	public void del(TbOut gs) {
		TbOutDao.del(gs);
		
	}

	@Override
	public void insertuser(TbOut gs) {
		TbOutDao.insertuser(gs);
		
	}

}
