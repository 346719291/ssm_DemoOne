package com.mapper;

import java.util.List;

import com.entity.Systemgoodslist;

public interface systemgoodtMapper {
	public List<Systemgoodslist> findAll();//������ѯ����
	public void updateuser(Systemgoodslist gs);//�޸Ķ���
	public void del(Systemgoodslist gs);//��������ɾ��
	public void insertuser(Systemgoodslist gs);//��Ӷ����û�
	public List<Systemgoodslist> findByPage(int pageno,int pagesize);//��ҳ����
}
