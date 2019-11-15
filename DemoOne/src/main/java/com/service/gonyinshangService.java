package com.service;

import java.util.List;

import com.entity.Gongyinshaginfo;

public interface gonyinshangService {
	public List<Gongyinshaginfo> findAll();//供应商
	public void updateuser(Gongyinshaginfo gs);//修改供应商
	public void del(Gongyinshaginfo gs);//单条删除
	public void insertuser(Gongyinshaginfo gs);//添加用户
}
