package com.service;

import java.util.List;

import com.entity.SalesDetail;

public interface SalesDetailService {

	public List<SalesDetail> Find_By_Page(SalesDetail sa);//销售记录
	public void updateuser(SalesDetail sa);//销售记录修改
	public void del(SalesDetail sa);//销售记录单挑删除
	public void SalesDetail(SalesDetail sa);//销售记录添加
}
