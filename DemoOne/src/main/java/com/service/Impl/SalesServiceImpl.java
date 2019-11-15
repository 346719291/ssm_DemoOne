package com.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Sales;
import com.mapper.SalesMapper;
import com.service.SalesService;

@Service("SalesService")
public class SalesServiceImpl implements SalesService{

	@Autowired
	public SalesMapper salesDao;//销售
	@Override
	public List<Sales> Find_By_Page(Sales sa) {//分页查找销售
		List<Sales> list=salesDao.Find_By_Page(sa);
		return list;
	}

	@Override
	public void updateuser(Sales sa) {
		salesDao.updateuser(sa);
		
	}

	@Override
	public void del(Sales sa) {
		salesDao.del(sa);
	}

	@Override
	public void insertuser(Sales sa) {
		// TODO Auto-generated method stub
		
	}


}
