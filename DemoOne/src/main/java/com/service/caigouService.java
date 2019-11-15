package com.service;

import java.util.List;

import com.entity.Caigouinfo;
import com.entity.Gongyinshaginfo;

public interface caigouService {
	public List<Caigouinfo> findAll();//采购所以信息的反馈表
	public List<Caigouinfo> findAllList();//单表查询
	public void updateuser(Caigouinfo gs);//修改供应商
	public void del(Caigouinfo gs);//单条删除
	public void insertuser(Caigouinfo gs);//添加用户
}
