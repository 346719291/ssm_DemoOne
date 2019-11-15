package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Credites;
import com.service.CreditesService;

@Controller
@RequestMapping("/credites")//用户
public class CreditesController {
	@Autowired
	private CreditesService CreditesServiceDao;//积分
	
	@RequestMapping("/add_user")
	@ResponseBody
	public void add_user(Credites gs,GetID id) {
		gs.setId(id.uuid());
		CreditesServiceDao.insertuser(gs);
	}
	@RequestMapping("/findAll")
	@ResponseBody
	public List<Credites> findAll() {
		List<Credites> list=CreditesServiceDao.findAll();
		return list;
	}
	@RequestMapping("/update_credites")
	@ResponseBody
	public void update_credites(Credites gs) {
		CreditesServiceDao.updateuser(gs);
	}
	@RequestMapping("/del_credites")
	@ResponseBody
	public void del_credites(Credites gs) {
		CreditesServiceDao.del(gs);
	}
	
}
