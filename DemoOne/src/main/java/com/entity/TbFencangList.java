package com.entity;

public class TbFencangList {//�ֲ���Ϣ��
	public String position;//  VARCHAR(10) ,-- �� λ��
	public String changkuinfo;// VARCHAR(40) -- �� ������Ϣ
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
