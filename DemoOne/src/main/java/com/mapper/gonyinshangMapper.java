package com.mapper;

import java.util.List;

import com.entity.Gongyinshaginfo;

public interface gonyinshangMapper {
	public List<Gongyinshaginfo> findAll();//��Ӧ��
	public void updateuser(Gongyinshaginfo g);//�޸Ĺ�Ӧ��
	public void del(Gongyinshaginfo gs);//����ɾ��
	public void insertuser(Gongyinshaginfo gs);//����û�
}
