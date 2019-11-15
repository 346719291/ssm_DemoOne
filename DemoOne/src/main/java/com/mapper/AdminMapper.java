package com.mapper;

import java.util.List;

import com.entity.Admin;

public interface AdminMapper {
	public List<Admin> findAll();//采购所以信息的反馈表
	public List<Admin> findAllList();//单表查询
	public void updateuser(Admin gs);//修改供应商
	public void del(Admin gs);//单条删除
	public void insertuser(Admin gs);//添加用户
	public Integer count(Admin gs);

}
