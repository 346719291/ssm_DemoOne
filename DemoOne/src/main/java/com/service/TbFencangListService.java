package com.service;

import java.util.List;

import com.entity.TbFencangList;

public interface TbFencangListService {
	public List<TbFencangList> findAll();//�ֲ�������Ϣ�ķ�����
	public List<TbFencangList> findAllList();//�ֲֵ����ѯ
	public void updateuser(TbFencangList gs);//�ֲ��޸�
	public void del(TbFencangList gs);//�ֲֵ���ɾ��
	public void insertuser(TbFencangList gs);//�ֲ�����û�
	public List<TbFencangList> find_info(TbFencangList gs);//�ֲ�������Ϣ�ķ�����
}
