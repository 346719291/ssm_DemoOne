package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Allpages/")
public class PagesController {
	
	
	@RequestMapping("/login_up")
	public String index() {
		return "pages/ sovereign/modals";//index,modals，login_index
	};
	
	@RequestMapping("invoice")
	public String invoice() {
		System.out.println("ok");
		return "pages/ sovereign/invoice";
	};
	
	@RequestMapping("spsmanage")
	public String spsmanage() {
		return "pages/ sovereign/stocksupplierpurches";
	}
	@RequestMapping("cun_info")//存库--信息
	public String cun_info() {
		return "pages/ sovereign/cunku_goods";
	}
	@RequestMapping("panku_manager")//盘库--管理
	public String panku_manager() {
		return "pages/ sovereign/Test";//panku_manager
	}
	@RequestMapping("panku_delete")//盘库--删除
	public String panku_delete() {
		return "pages/ sovereign/panku_delete";
	}
	@RequestMapping("sales_table")//盘库--删除
	public String sales_table() {
		return "pages/ sovereign/sales_table";
	}
	@RequestMapping("xiangxi_info")//详细销售的信息
	public String xiangxi_info() {
		return "pages/ sovereign/xiangxi_info";
	}
	@RequestMapping("update_date")//修改数据
	public String update_date() {
		return "pages/ sovereign/update_date";
	}
	@RequestMapping("chuku_info")//出库表
	public String chuku_info() {
		return "pages/ sovereign/chuku_info";
	}
	@RequestMapping("/kehuguanli")//出库表
	public String kehuguanli() {
		return "pages/ sovereign/kehuguanli";
	}
	@RequestMapping("/register")//注册
	public String register() {
		return "pages/ sovereign/register";
	}
	@RequestMapping("/login_index")//登陆
	public String login_index() {
		return "pages/ sovereign/login_index";
	}
	@RequestMapping("/gonyinshang")//登陆
	public String gonyinshang() {
		return "pages/ sovereign/gonyins";
	}
}
