package com.mapper;

import java.util.List;

import com.entity.TbFencangList;

public interface TbFencangListMapper {//分仓管理

	public List<TbFencangList> findAll();//分仓所以信息的反馈表
	public List<TbFencangList> findAllList();//分仓单表查询
	public void updateuser(TbFencangList gs);//分仓修改
	public void del(TbFencangList gs);//分仓单条删除
	public void insertuser(TbFencangList gs);//分仓添加用户
	public List<TbFencangList> find_info(TbFencangList gs);//分仓所以信息的反馈表
}
