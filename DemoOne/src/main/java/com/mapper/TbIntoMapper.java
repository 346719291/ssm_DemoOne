package com.mapper;

import java.util.List;

import com.entity.TbInto;

public interface TbIntoMapper {
	public List<TbInto> findAll();//�ɹ�������Ϣ�ķ�����
	public List<TbInto> findAllList();//�����ѯ
	public void updateuser(TbInto gs);//�޸Ĺ�Ӧ��
	public void del(TbInto gs);//����ɾ��
	public void insertuser(TbInto gs);//����û�

}
