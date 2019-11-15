package com.entity;

public class TbType {//类型表

	public String postion;// VARCHAR(20),--  否 位置
	public String fenchanginfo;// VARCHAR(100) -- 0 否 分仓信息
	public TbType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbType(String postion, String fenchanginfo) {
		super();
		this.postion = postion;
		this.fenchanginfo = fenchanginfo;
	}
	public String getPostion() {
		return postion;
	}
	public void setPostion(String postion) {
		this.postion = postion;
	}
	public String getFenchanginfo() {
		return fenchanginfo;
	}
	public void setFenchanginfo(String fenchanginfo) {
		this.fenchanginfo = fenchanginfo;
	}
	@Override
	public String toString() {
		return "TbType [postion=" + postion + ", fenchanginfo=" + fenchanginfo + "]";
	}
	
}
