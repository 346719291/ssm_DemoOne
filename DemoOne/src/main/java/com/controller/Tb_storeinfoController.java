package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.TbStoreinfo;
import com.mapper.TbStoreinfoMapper;

@Controller
@RequestMapping("/storeinfo")//存库

public class Tb_storeinfoController {//存库的信息
	@Autowired
	public TbStoreinfoMapper storeinfoDao;//存库的服务器

	@RequestMapping("add_info")//添加的存库
	@ResponseBody
	public void add_info(TbStoreinfo gs) {
		storeinfoDao.insertuser(gs);
	}
	@RequestMapping("find_list")//添加的存库
	@ResponseBody
	public List<TbStoreinfo> find_list(TbStoreinfo gs) {
		List<TbStoreinfo> list=storeinfoDao.findAll(gs);
		return list;
	}
	@RequestMapping("/store_danbiaofind")//条件查询
	public String store_danbiaofind(TbStoreinfo gs ,Model model) {
		List<TbStoreinfo> list=storeinfoDao.simplefind(gs);
		System.out.println("=======================list"+list);
		model.addAttribute("list", list);
		return "pages/ sovereign/sales_table";
	}
	
}
