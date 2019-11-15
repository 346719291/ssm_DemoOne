package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mapper.userMapper;
@Controller
public class TestController {
	
	@RequestMapping("/indexpage")
	public String index() {
		return "pages/ sovereign/login_index";//index,modals£¬login_index
	};
	@RequestMapping("/models")
	public String models() {
		return "pages/ sovereign/modals";//index,modals£¬login_index
	};
	@RequestMapping("/index")
	public String indexone() {
		return "index";
	}
	@Autowired
	private userMapper userDao;
	@RequestMapping("/testmapper")
	public String testmapper() {
		 System.out.println(userDao.findAll().size());
		return "index";
	}
}
