package com.service;

import java.util.List;

import com.entity.Sales;

public interface SalesService {
	public List<Sales> Find_By_Page(Sales sa);//���ۼ�¼
	public void updateuser(Sales sa);//���ۼ�¼�޸�
	public void del(Sales sa);//���ۼ�¼����ɾ��
	public void insertuser(Sales sa);//���ۼ�¼���
}
