package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.TbInto;
import com.mapper.TbIntoMapper;
import com.service.TbIntoService;

@Service("TbIntoService")
public class TbIntoServiceImpl implements TbIntoService{
    @Autowired
    public TbIntoMapper TbintoDao;//Èë¿âmapper
	@Override
	public List<TbInto> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TbInto> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateuser(TbInto gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void del(TbInto gs) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertuser(TbInto gs) {
		TbintoDao.insertuser(gs);
		
	}

}
