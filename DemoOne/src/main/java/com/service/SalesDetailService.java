package com.service;

import java.util.List;

import com.entity.SalesDetail;

public interface SalesDetailService {

	public List<SalesDetail> Find_By_Page(SalesDetail sa);//���ۼ�¼
	public void updateuser(SalesDetail sa);//���ۼ�¼�޸�
	public void del(SalesDetail sa);//���ۼ�¼����ɾ��
	public void SalesDetail(SalesDetail sa);//���ۼ�¼���
}
