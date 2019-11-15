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
@RequestMapping("/sales")//销售控制器
public class Sales_tableController {
	@Autowired
	public SalesService salesDao;//销售
	@Autowired
	public SalesDetailService SalesDetailDao;//销售详情
	
	@RequestMapping("/find_by_page")//分页查找
	@ResponseBody
	public List<Sales> find_by_page(Sales sa){
		List<Sales> list=salesDao.Find_By_Page(sa);
		System.out.println("================"+list);
		return list;
	}
	
	@RequestMapping("/find_by_where")//分页查找
	@ResponseBody
	public List<SalesDetail> find_by_where(SalesDetail sa){
		System.out.println("=============="+sa);
		List<SalesDetail> list=SalesDetailDao.Find_By_Page(sa);
		return list;
	}
	@RequestMapping("/del")//分页查找
	@ResponseBody
	public void del(Sales sa) {
		salesDao.del(sa);
	}
	@RequestMapping("/update_sales")//修改
	@ResponseBody
	public void update_sales(Sales sa) {
		salesDao.updateuser(sa);
		System.out.println("ok");
	}
	@RequestMapping("/del_xiangxi")//修改
	@ResponseBody
	public void del_xiangxi(SalesDetail sa) {
		SalesDetailDao.del(sa);
	}
	@RequestMapping("/update_xiangxi")//修改
	@ResponseBody
	public void update_xiangxi(SalesDetail sa) {
		System.out.println("==="+sa);
		SalesDetailDao.updateuser(sa);
	}
	
}
