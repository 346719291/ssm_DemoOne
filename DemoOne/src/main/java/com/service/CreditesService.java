package com.service;

import java.util.List;

import com.entity.Credites;

public interface CreditesService {

	public List<Credites> findAll();//采购所以信息的反馈表
	public List<Credites> findAllList();//单表查询
	public void updateuser(Credites gs);//修改供应商
	public void del(Credites gs);//单条删除
	public void insertuser(Credites gs);//添加用户
}
