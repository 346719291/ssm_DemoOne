package com.service;

import java.util.List;

import com.entity.Admin;

public interface AdminService {

	public List<Admin> findAll();//�ɹ�������Ϣ�ķ�����
	public List<Admin> findAllList();//�����ѯ
	public void updateuser(Admin gs);//�޸Ĺ�Ӧ��
	public void del(Admin gs);//����ɾ��
	public void insertuser(Admin gs);//����û�
	public Integer count(Admin gs);

}
