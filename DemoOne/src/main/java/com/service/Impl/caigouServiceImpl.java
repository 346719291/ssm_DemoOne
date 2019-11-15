package com.service.Impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Caigouinfo;
import com.entity.Gongyinshaginfo;
import com.mapper.caigouinfoMapper;
import com.service.caigouService;

@Service("caigouService")
public class caigouServiceImpl implements caigouService{

	@Autowired
	private caigouinfoMapper AllgouwuDao;
	@Override
	@Transactional
	public List<Caigouinfo> findAll() {
		Caigouinfo gwlist=new Caigouinfo();
		List<Caigouinfo> list=AllgouwuDao.findAll();
		list.add(gwlist);
		return list;
	}
	@Override
	public List<Caigouinfo> findAllList() {
		Caigouinfo gwlist=new Caigouinfo();
		List<Caigouinfo> list=AllgouwuDao.findAllList();
		list.add(gwlist);
		return list;
	}
	@Override
	public void updateuser(Caigouinfo gs) {
		AllgouwuDao.updateuser(gs);
		
	}
	@Override
	public void del(Caigouinfo gs) {
		AllgouwuDao.del(gs);
		
	}
	@Override
	public void insertuser(Caigouinfo gs) {
		AllgouwuDao.insertuser(gs);
		
	}
	

}
