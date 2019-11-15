package com.service;

import java.util.List;

import com.entity.Sales;

public interface SalesService {
	public List<Sales> Find_By_Page(Sales sa);//销售记录
	public void updateuser(Sales sa);//销售记录修改
	public void del(Sales sa);//销售记录单挑删除
	public void insertuser(Sales sa);//销售记录添加
}
