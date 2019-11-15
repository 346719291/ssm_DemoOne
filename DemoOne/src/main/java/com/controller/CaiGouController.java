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
	public caigouService s;//�ɹ�������
	@Autowired
	public gonyinshangService g;//��Ӧ�̷�����
	@Autowired
	public systemgoodtService systemdao;//ϵͳ�������
	
	@RequestMapping("/caigou")//�ɹ�
	@ResponseBody
	public List<Caigouinfo> goods(Model model) throws IOException  {
			List<Caigouinfo> list=s.findAll();//��ѯ���еĲɺ���Ϣ
		return list;
	}
	
	
	 @RequestMapping("/gonyin")
	 public String gonyin() {
		return "pages/ sovereign/gonyins";
	 }

	@RequestMapping("/caigouinfos") /* �ɹ���Ϣ��ҳ */
	 public String caigouinfos() {
		return "pages/ sovereign/caigou";
		 
	 }
	@RequestMapping("/gonyin_list")//�޸Ĺ�Ӧ�̵���Ϣ
	@ResponseBody
	public List<Gongyinshaginfo> gonyin(Model model){
		 List<Gongyinshaginfo> list= g.findAll();
		 model.addAttribute("list", list);
		return list;
	};
	
	@RequestMapping("/updateinfo")//�޸Ĺ�Ӧ�̵���Ϣ
	@ResponseBody
	public void updateinfo(Gongyinshaginfo gs){
		g.updateuser(gs);
	}
	@RequestMapping("/deluser")//ɾ����Ӧ�̵���Ϣ
	@ResponseBody
	public void deluser(Gongyinshaginfo gs) {
		System.out.println("��Ӧ�̵���Ϣ"+gs);
		g.del(gs);
	}
	@RequestMapping("/insetuser")//���
	@ResponseBody
	public void insetuser(GetID ID,Gongyinshaginfo gs,Model model) throws IOException {
		gs.setId(ID.uuid());
		g.insertuser(gs);
		List<Gongyinshaginfo> list= g.findAll();
		model.addAttribute("list",list);
	}
	
	@RequestMapping("/systemlist") /* ������Ϣ���� */
	@ResponseBody
	public List<Systemgoodslist> systemlist() {
		List<Systemgoodslist> list= systemdao.findAll();
		System.out.println("===========������Ϣ"+list);
		return list;
	}
	@RequestMapping("/Find_By_page") /* ������Ϣ���з�ҳ */
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
	@RequestMapping("/updatecaigou")//�޸Ĳɹ�����Ϣ
	@ResponseBody
	public void updatecaigou(Caigouinfo gs){
		System.out.println("gs=============="+gs);
		s.updateuser(gs);
	}
	@RequestMapping("/delcaigous")//ɾ�ɹ�����Ϣ
	@ResponseBody
	public void delcaigou(Caigouinfo gs) throws IOException {
		s.del(gs);
	}
	@RequestMapping("/updatesystem")//�޸Ķ�����
	@ResponseBody
	public void updatesystem(Systemgoodslist gs) throws IOException {
		systemdao.updateuser(gs);
	}
	@RequestMapping("/delsyso")
	@ResponseBody
	public void delsyso(Systemgoodslist gs) {//ɾ����Ӧ�̵���Ϣ public String
		systemdao.del(gs);
	}
	/**
	 * ��ӹ�Ӧ��
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
