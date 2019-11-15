package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Gongyinshaginfo;
import com.mapper.gonyinshangMapper;
import com.service.gonyinshangService;

@Service("gonyinshangService")
public class gonyinshangServiceImpl implements gonyinshangService{
	@Autowired
	private gonyinshangMapper AllgonyinDao;
	@Override
	@Transactional
	public List<Gongyinshaginfo> findAll() {
		Gongyinshaginfo gonyin=new Gongyinshaginfo();
		List<Gongyinshaginfo> list=AllgonyinDao.findAll();
		return list;
	}
	@Override
	public void updateuser(Gongyinshaginfo gs) {
		AllgonyinDao.updateuser(gs);
	}
	@Override
	public void del(Gongyinshaginfo gs) {
		AllgonyinDao.del(gs);
		
	}
	@Override
	public void insertuser(Gongyinshaginfo gs) {
		AllgonyinDao.insertuser(gs);
		
	}

}
