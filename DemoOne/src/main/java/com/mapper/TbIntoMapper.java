package com.mapper;

import java.util.List;

import com.entity.TbInto;

public interface TbIntoMapper {
	public List<TbInto> findAll();//采购所以信息的反馈表
	public List<TbInto> findAllList();//单表查询
	public void updateuser(TbInto gs);//修改供应商
	public void del(TbInto gs);//单条删除
	public void insertuser(TbInto gs);//添加用户

}
