package com.service;

import java.util.List;

import com.entity.TbOut;

public interface TbOutService {

	public List<TbOut> findAll();//采购所以信息的反馈表
	public List<TbOut> findAllList();//单表查询
	public void updateuser(TbOut gs);//修改供应商
	public void del(TbOut gs);//单条删除
	public void insertuser(TbOut gs);//添加用户
}
