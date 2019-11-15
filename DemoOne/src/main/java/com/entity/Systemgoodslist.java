package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseSystemgoodslist")
public class Systemgoodslist {//ϵͳ���ϱ����
	public String id ;//VARCHAR(20) NOT NULL,-- �������
	public String goodsname ;//VARCHAR(20) NOT NULL,-- ��������
	public String typeofgoods;// VARCHAR(20) NOT NULL,-- ��������
	public String guige ;//VARCHAR(20) NOT NULL,-- ���Ϲ��
	public String danwei;// VARCHAR(10) NOT NULL --  ���õ�λ 
	public String dindanhao  ;//������
	public String qmname;//ǩ��
	public String state;
	public Systemgoodslist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Systemgoodslist(String id, String goodsname, String typeofgoods, String guige, String danwei,
			String dindanhao, String qmname, String state) {
		super();
		this.id = id;
		this.goodsname = goodsname;
		this.typeofgoods = typeofgoods;
		this.guige = guige;
		this.danwei = danwei;
		this.dindanhao = dindanhao;
		this.qmname = qmname;
		this.state = state;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getTypeofgoods() {
		return typeofgoods;
	}
	public void setTypeofgoods(String typeofgoods) {
		this.typeofgoods = typeofgoods;
	}
	public String getGuige() {
		return guige;
	}
	public void setGuige(String guige) {
		this.guige = guige;
	}
	public String getDanwei() {
		return danwei;
	}
	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}
	public String getDindanhao() {
		return dindanhao;
	}
	public void setDindanhao(String dindanhao) {
		this.dindanhao = dindanhao;
	}
	public String getQmname() {
		return qmname;
	}
	public void setQmname(String qmname) {
		this.qmname = qmname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Systemgoodslist [id=" + id + ", goodsname=" + goodsname + ", typeofgoods=" + typeofgoods + ", guige="
				+ guige + ", danwei=" + danwei + ", dindanhao=" + dindanhao + ", qmname=" + qmname + ", state=" + state
				+ "]";
	}
	
}
