package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.TbFencangList;
import com.mapper.TbFencangListMapper;
import com.service.TbFencangListService;
@Service("TbFencangListService")
public class TbFencangListServiceImpl implements TbFencangListService{
	@Autowired
	public TbFencangListMapper tbfencangDao;
	
	@Override
	public List<TbFencangList> findAll() {
		List<TbFencangList> list=tbfencangDao.findAll();
		return list;
	}

	@Override
	public List<TbFencangList> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuser(TbFencangList gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void del(TbFencangList gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertuser(TbFencangList gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<TbFencangList> find_info(TbFencangList gs) {
		List<TbFencangList> list= tbfencangDao.find_info(gs);
		return list;
	}


}
