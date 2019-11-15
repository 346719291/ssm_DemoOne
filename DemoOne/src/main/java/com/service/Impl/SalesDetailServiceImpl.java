package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.SalesDetail;
import com.mapper.SalesDetailMapper;
import com.service.SalesDetailService;

@Service("SalesDetailService")
public class SalesDetailServiceImpl implements SalesDetailService{

	@Autowired
	public SalesDetailMapper SalesDetailDao;
	@Override
	public List<SalesDetail> Find_By_Page(SalesDetail sa) {
		List<SalesDetail> list=SalesDetailDao.Find_By_Page(sa);
		return list;
	}

	@Override
	public void updateuser(SalesDetail sa) {
		SalesDetailDao.updateuser(sa);		
	}

	@Override
	public void del(SalesDetail sa) {
		SalesDetailDao.del(sa);
		
	}

	@Override
	public void SalesDetail(SalesDetail sa) {
		// TODO Auto-generated method stub
		
	}

}
