package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Sales;
import com.entity.SalesDetail;
import com.service.SalesDetailService;
import com.service.SalesService;

@Controller
@RequestMapping("/sales")//���ۿ�����
public class Sales_tableController {
	@Autowired
	public SalesService salesDao;//����
	@Autowired
	public SalesDetailService SalesDetailDao;//��������
	
	@RequestMapping("/find_by_page")//��ҳ����
	@ResponseBody
	public List<Sales> find_by_page(Sales sa){
		List<Sales> list=salesDao.Find_By_Page(sa);
		System.out.println("================"+list);
		return list;
	}
	
	@RequestMapping("/find_by_where")//��ҳ����
	@ResponseBody
	public List<SalesDetail> find_by_where(SalesDetail sa){
		System.out.println("=============="+sa);
		List<SalesDetail> list=SalesDetailDao.Find_By_Page(sa);
		return list;
	}
	@RequestMapping("/del")//��ҳ����
	@ResponseBody
	public void del(Sales sa) {
		salesDao.del(sa);
	}
	@RequestMapping("/update_sales")//�޸�
	@ResponseBody
	public void update_sales(Sales sa) {
		salesDao.updateuser(sa);
		System.out.println("ok");
	}
	@RequestMapping("/del_xiangxi")//�޸�
	@ResponseBody
	public void del_xiangxi(SalesDetail sa) {
		SalesDetailDao.del(sa);
	}
	@RequestMapping("/update_xiangxi")//�޸�
	@ResponseBody
	public void update_xiangxi(SalesDetail sa) {
		System.out.println("==="+sa);
		SalesDetailDao.updateuser(sa);
	}
	
}
