package com.service;

import java.util.List;

import com.entity.Systemgoodslist;

public interface systemgoodtService {
	public List<Systemgoodslist> findAll();//供应商
	public void updateuser(Systemgoodslist gs);//修改供应商
	public void del(Systemgoodslist gs);//单条删除
	public void insertuser(Systemgoodslist gs);//添加用户
	public List<Systemgoodslist> findByPage(int pageno,int pagesize);//分页查找
}
