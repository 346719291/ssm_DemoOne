package com.service;

import java.util.List;

import com.entity.TbStoreinfo;

public interface TbStoreinfoService {//是库存信息

	public List<TbStoreinfo> findAll(TbStoreinfo gs);//采购所以信息的反馈表
	public List<TbStoreinfo> findAllList();//单表查询
	public void updateuser(TbStoreinfo gs);//修改供应商
	public void del(TbStoreinfo gs);//单条删除
	public void insertuser(TbStoreinfo gs);//添加用户
	public void kucun_update(TbStoreinfo gs);//添加用户
	public List<TbStoreinfo> simplefind(TbStoreinfo gs);//单表查找

}
