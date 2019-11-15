package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.TbStoreinfo;
import com.mapper.TbStoreinfoMapper;
import com.service.TbStoreinfoService;

@Service("TbStoreinfoService")
public class TbStoreinfoServiceImpl implements TbStoreinfoService{

	@Autowired
	public TbStoreinfoMapper tbstoreinfoDao;//´æ¿âµÄÐÅÏ¢

	@Override
	public List<TbStoreinfo> findAll(TbStoreinfo gs) {
		List<TbStoreinfo> list=tbstoreinfoDao.findAll(gs);
		return list;
	}


	@Override
	public List<TbStoreinfo> findAllList() {
		List<TbStoreinfo> list=tbstoreinfoDao.findAllList();
		return list;
	}

	@Override
	public void updateuser(TbStoreinfo gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void del(TbStoreinfo gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertuser(TbStoreinfo gs) {
		tbstoreinfoDao.insertuser(gs);
		
	}


	@Override
	public void kucun_update(TbStoreinfo gs) {
		tbstoreinfoDao.kucun_update(gs);
		
	}


	@Override
	public List<TbStoreinfo> simplefind(TbStoreinfo gs) {
		List<TbStoreinfo> list=tbstoreinfoDao.simplefind(gs);
		return list;
	}

}
