package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Admin;
import com.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	public AdminService AdminServiceDao;
	
	/**
	 * ÑéÖ¤µÇÂ½
	 */
	@RequestMapping("/login_up")
	@ResponseBody
	public Integer login(Admin gs) {
		Integer ln=AdminServiceDao.count(gs);
		return ln;
	}
	@RequestMapping("/add_user")
	@ResponseBody
	public void add_user(Admin gs) {
		System.out.println("gs==========="+gs);
		AdminServiceDao.insertuser(gs);
	}
}
