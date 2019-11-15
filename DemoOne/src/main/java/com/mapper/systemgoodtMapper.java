package com.mapper;

import java.util.List;

import com.entity.Systemgoodslist;

public interface systemgoodtMapper {
	public List<Systemgoodslist> findAll();//订单查询所有
	public void updateuser(Systemgoodslist gs);//修改订单
	public void del(Systemgoodslist gs);//单条订单删除
	public void insertuser(Systemgoodslist gs);//添加订单用户
	public List<Systemgoodslist> findByPage(int pageno,int pagesize);//分页查找
}
