package com.service;

import java.util.List;

import com.entity.TbStoreinfo;

public interface TbStoreinfoService {//�ǿ����Ϣ

	public List<TbStoreinfo> findAll(TbStoreinfo gs);//�ɹ�������Ϣ�ķ�����
	public List<TbStoreinfo> findAllList();//�����ѯ
	public void updateuser(TbStoreinfo gs);//�޸Ĺ�Ӧ��
	public void del(TbStoreinfo gs);//����ɾ��
	public void insertuser(TbStoreinfo gs);//����û�
	public void kucun_update(TbStoreinfo gs);//����û�
	public List<TbStoreinfo> simplefind(TbStoreinfo gs);//�������

}
