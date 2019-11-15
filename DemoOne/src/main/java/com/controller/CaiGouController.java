package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Caigouinfo;
import com.entity.Gongyinshaginfo;
import com.entity.Systemgoodslist;
import com.service.caigouService;
import com.service.gonyinshangService;
import com.service.systemgoodtService;

@Controller
@RequestMapping("/goods/")
public class CaiGouController {
	
	@Autowired
	public caigouService s;//采购服务器
	@Autowired
	public gonyinshangService g;//供应商服务器
	@Autowired
	public systemgoodtService systemdao;//系统货物管理
	
	@RequestMapping("/caigou")//采购
	@ResponseBody
	public List<Caigouinfo> goods(Model model) throws IOException  {
			List<Caigouinfo> list=s.findAll();//查询所有的采后信息
		return list;
	}
	
	
	 @RequestMapping("/gonyin")
	 public String gonyin() {
		return "pages/ sovereign/gonyins";
	 }

	@RequestMapping("/caigouinfos") /* 采购信息网页 */
	 public String caigouinfos() {
		return "pages/ sovereign/caigou";
		 
	 }
	@RequestMapping("/gonyin_list")//修改供应商的信息
	@ResponseBody
	public List<Gongyinshaginfo> gonyin(Model model){
		 List<Gongyinshaginfo> list= g.findAll();
		 model.addAttribute("list", list);
		return list;
	};
	
	@RequestMapping("/updateinfo")//修改供应商的信息
	@ResponseBody
	public void updateinfo(Gongyinshaginfo gs){
		g.updateuser(gs);
	}
	@RequestMapping("/deluser")//删除供应商的信息
	@ResponseBody
	public void deluser(Gongyinshaginfo gs) {
		System.out.println("供应商的信息"+gs);
		g.del(gs);
	}
	@RequestMapping("/insetuser")//添加
	@ResponseBody
	public void insetuser(GetID ID,Gongyinshaginfo gs,Model model) throws IOException {
		gs.setId(ID.uuid());
		g.insertuser(gs);
		List<Gongyinshaginfo> list= g.findAll();
		model.addAttribute("list",list);
	}
	
	@RequestMapping("/systemlist") /* 订单信息所有 */
	@ResponseBody
	public List<Systemgoodslist> systemlist() {
		List<Systemgoodslist> list= systemdao.findAll();
		System.out.println("===========订单消息"+list);
		return list;
	}
	@RequestMapping("/Find_By_page") /* 订单信息所有分页 */
	@ResponseBody
	public List<Systemgoodslist> findByPage(int pageno,int pagesize) {
		List<Systemgoodslist> list= systemdao.findByPage(pageno, pagesize);
		return list;
	}
	
	
	@RequestMapping("/caigoulist")
	public String caigoulist(HttpServletRequest request) {
		List<Caigouinfo> list= s.findAllList();
		request.setAttribute("list", list);
		return "pages/ sovereign/caigou";
	}
	@RequestMapping("/updatecaigou")//修改采购的信息
	@ResponseBody
	public void updatecaigou(Caigouinfo gs){
		System.out.println("gs=============="+gs);
		s.updateuser(gs);
	}
	@RequestMapping("/delcaigous")//删采购的信息
	@ResponseBody
	public void delcaigou(Caigouinfo gs) throws IOException {
		s.del(gs);
	}
	@RequestMapping("/updatesystem")//修改订货单
	@ResponseBody
	public void updatesystem(Systemgoodslist gs) throws IOException {
		systemdao.updateuser(gs);
	}
	@RequestMapping("/delsyso")
	@ResponseBody
	public void delsyso(Systemgoodslist gs) {//删除供应商的信息 public String
		systemdao.del(gs);
	}
	/**
	 * 添加供应商
	 * @param gs
	 */
	@RequestMapping("gonyinshangadd")
	@ResponseBody
	public void gonyinshangadd(Gongyinshaginfo gs ,GetID id) {
		gs.setId(id.uuid());
		g.insertuser(gs);
	}
	@RequestMapping("caigouadd")
	@ResponseBody
	public void caigouadd(Caigouinfo gs ,GetID id) {
		gs.setId(id.uuid());
		s.insertuser(gs);
	}
	@RequestMapping("sysadd")
	@ResponseBody
	public void sysadd(Systemgoodslist gs ,GetID id) {
		gs.setId(id.uuid());
		System.out.println("gs+++++++++++"+gs);
		systemdao.insertuser(gs);
		
	}
	
	
}
