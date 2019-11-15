package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Systemgoodslist;
import com.mapper.gonyinshangMapper;
import com.mapper.systemgoodtMapper;
import com.service.systemgoodtService;
@Service("systemgoodtService")
public class systemgoodtServiceImpl implements systemgoodtService{
	@Autowired
	private systemgoodtMapper AllgonyinDao;
	@Override
	@Transactional
	
	
	public List<Systemgoodslist> findAll() {
		List<Systemgoodslist> list=AllgonyinDao.findAll();
		return list;
	}

	@Override
	public void updateuser(Systemgoodslist gs) {
		AllgonyinDao.updateuser(gs);
		
	}

	@Override
	public void del(Systemgoodslist gs) {
		AllgonyinDao.del(gs);	
	}

	@Override
	public void insertuser(Systemgoodslist gs) {
		AllgonyinDao.insertuser(gs);
		
	}

	@Override
	public List<Systemgoodslist> findByPage(int pageno, int pagesize) {
		List<Systemgoodslist> list=AllgonyinDao.findByPage(pageno, pagesize);
		return list;
	}

	

}
