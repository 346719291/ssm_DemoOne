package com.service;

import java.util.List;

import com.entity.Caigouinfo;
import com.entity.Gongyinshaginfo;

public interface caigouService {
	public List<Caigouinfo> findAll();//�ɹ�������Ϣ�ķ�����
	public List<Caigouinfo> findAllList();//�����ѯ
	public void updateuser(Caigouinfo gs);//�޸Ĺ�Ӧ��
	public void del(Caigouinfo gs);//����ɾ��
	public void insertuser(Caigouinfo gs);//����û�
}
