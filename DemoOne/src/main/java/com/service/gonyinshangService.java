package com.service;

import java.util.List;

import com.entity.Gongyinshaginfo;

public interface gonyinshangService {
	public List<Gongyinshaginfo> findAll();//��Ӧ��
	public void updateuser(Gongyinshaginfo gs);//�޸Ĺ�Ӧ��
	public void del(Gongyinshaginfo gs);//����ɾ��
	public void insertuser(Gongyinshaginfo gs);//����û�
}
