package com.service;

import java.util.List;

import com.entity.Systemgoodslist;

public interface systemgoodtService {
	public List<Systemgoodslist> findAll();//��Ӧ��
	public void updateuser(Systemgoodslist gs);//�޸Ĺ�Ӧ��
	public void del(Systemgoodslist gs);//����ɾ��
	public void insertuser(Systemgoodslist gs);//����û�
	public List<Systemgoodslist> findByPage(int pageno,int pagesize);//��ҳ����
}
