package com.service;

import java.util.List;

import com.entity.Credites;

public interface CreditesService {

	public List<Credites> findAll();//�ɹ�������Ϣ�ķ�����
	public List<Credites> findAllList();//�����ѯ
	public void updateuser(Credites gs);//�޸Ĺ�Ӧ��
	public void del(Credites gs);//����ɾ��
	public void insertuser(Credites gs);//����û�
}
