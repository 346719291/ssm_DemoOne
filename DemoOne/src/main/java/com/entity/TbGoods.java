package com.entity;

public class TbGoods { //��Ʒ��Ϣ��
	private String runnumber ;//VARCHAR(16),-- �� ��ˮ��
	private String goodsname  ;//VARCHAR(10) ,-- �� ��Ʒ����
	private String goodstype ;// VARCHAR(7) ,-- �� ��Ʒ����
	private double price ;// DOUBLE ,-- �� �۸�
	private String goodsinfo ;// VARCHAR(100)--  �� ��Ʒ��Ϣ
	public TbGoods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbGoods(String runnumber, String goodsname, String goodstype, double price, String goodsinfo) {
		super();
		this.runnumber = runnumber;
		this.goodsname = goodsname;
		this.goodstype = goodstype;
		this.price = price;
		goodsinfo = goodsinfo;
	}
	public String getRunnumber() {
		return runnumber;
	}
	public void setRunnumber(String runnumber) {
		this.runnumber = runnumber;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getGoodstype() {
		return goodstype;
	}
	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getgoodsinfo() {
		return goodsinfo;
	}
	public void setgoodsinfo(String goodsinfo) {
		goodsinfo = goodsinfo;
	}
	@Override
	public String toString() {
		return "TbGoods [runnumber=" + runnumber + ", goodsname=" + goodsname + ", goodstype=" + goodstype + ", price="
				+ price + ", goodsinfo=" + goodsinfo + "]";
	}
	
	
}
