package com.mapper;

import java.util.List;

import com.entity.TbOut;

public interface TbOutMapper {

	public List<TbOut> findAll();//�ɹ�������Ϣ�ķ�����
	public List<TbOut> findAllList();//�����ѯ
	public void updateuser(TbOut gs);//�޸Ĺ�Ӧ��
	public void del(TbOut gs);//����ɾ��
	public void insertuser(TbOut gs);//����û�

}
