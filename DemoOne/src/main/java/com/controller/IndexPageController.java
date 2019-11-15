package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.user;
import com.mapper.userMapper;
import com.mybatisUt.SqlSession;

@Controller
public class IndexPageController {
	
	@RequestMapping("/selectall")
	@ResponseBody
	public List<user> findall(Model model,String id,HttpServletRequest request,HttpServletResponse response) {
		SqlSession session=new SqlSession();
		userMapper usermapper= (userMapper) session.getMapper(userMapper.class);
		user users=new user();
		
		users.setId(id);
		List<user> userlist=new ArrayList<user>();
		userlist=usermapper.selectuser(users);
		userlist.add(users);
		//model.addAttribute("userlist", userlist.get(0));
		request.setAttribute("userlist",userlist.get(0));
		session.closeSqlSession();
		System.out.println(userlist.get(0).getUsername());
		return userlist;}
	
	@RequestMapping("/userupdate")
	@ResponseBody
	public String update(Model model,String id,String username,Integer sex,HttpServletRequest request,HttpServletResponse response) {
		SqlSession session=new SqlSession();
		
		 userMapper usermapper= (userMapper) session.getMapper(userMapper.class);
		 user users=new user();
		 users.setUsername(username); 
		 users.setSex(sex);
		 users.setId(id);
		 usermapper.updateuser(users);
		 session.commit();
		 session.closeSqlSession();
		 System.out.println(users);
		 System.out.println("ok");
		return "";
	}
	
	@RequestMapping("/insertuser") /* Ìí¼ÓÊý¾Ý */
	@ResponseBody
	public String insert(GetID ID,user users,String id) {
		SqlSession session=new SqlSession();
		userMapper usermapper= (userMapper)session.getMapper(userMapper.class);
		users.setId(ID.uuid());
		usermapper.insertuser(users);
		session.commit();
		session.closeSqlSession();
		System.out.println(users);
		System.out.println("ok");
		return null;
	}
	
	@RequestMapping("/deleteuser")
	@ResponseBody
	public String deleteuser(user users) {
		SqlSession session=new SqlSession();
		userMapper usermapper= (userMapper)session.getMapper(userMapper.class);
		usermapper.deleteuser(users);
		session.commit();
		session.closeSqlSession();
		return null;
		
	}; 
	
	@RequestMapping("/findall")
	public String findall(user users ,Model model,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("1");
		SqlSession session=new SqlSession();
		userMapper usermapper= (userMapper)session.getMapper(userMapper.class);
		List<user> s=usermapper.findAll();
		s.add(users);
		session.closeSqlSession();
		request.setAttribute("s",s);
		return "date";
	}
	
}
