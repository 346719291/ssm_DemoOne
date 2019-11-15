package com.entity;

public class TbFencangList {//分仓信息表
	public String position;//  VARCHAR(10) ,-- 否 位置
	public String changkuinfo;// VARCHAR(40) -- 否 厂库信息
	public TbFencangList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbFencangList(String position, String changkuinfo) {
		super();
		this.position = position;
		this.changkuinfo = changkuinfo;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getChangkuinfo() {
		return changkuinfo;
	}
	public void setChangkuinfo(String changkuinfo) {
		this.changkuinfo = changkuinfo;
	}
	@Override
	public String toString() {
		return "TbFencangList [position=" + position + ", changkuinfo=" + changkuinfo + "]";
	}
	

}
