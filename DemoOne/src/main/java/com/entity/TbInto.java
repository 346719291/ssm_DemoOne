package com.entity;

public class TbInto {//入库表
	public String goodsinfomation;// VARCHAR(100) ,-- 否 入信息
	public String goodsdate;// DATE  ,-- 否 入库日期
	public String pici;// INT ,-- 否 批次
	public String number;// INT -- 否 入库数量
	public String product_time;//生产日期
	public String baozhiqi;//保质期
	public TbInto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbInto(String goodsinfomation, String goodsdate, String pici, String number, String product_time,
			String baozhiqi) {
		super();
		this.goodsinfomation = goodsinfomation;
		this.goodsdate = goodsdate;
		this.pici = pici;
		this.number = number;
		this.product_time = product_time;
		this.baozhiqi = baozhiqi;
	}
	public String getGoodsinfomation() {
		return goodsinfomation;
	}
	public void setGoodsinfomation(String goodsinfomation) {
		this.goodsinfomation = goodsinfomation;
	}
	public String getGoodsdate() {
		return goodsdate;
	}
	public void setGoodsdate(String goodsdate) {
		this.goodsdate = goodsdate;
	}
	public String getPici() {
		return pici;
	}
	public void setPici(String pici) {
		this.pici = pici;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getProduct_time() {
		return product_time;
	}
	public void setProduct_time(String product_time) {
		this.product_time = product_time;
	}
	public String getBaozhiqi() {
		return baozhiqi;
	}
	public void setBaozhiqi(String baozhiqi) {
		this.baozhiqi = baozhiqi;
	}
	@Override
	public String toString() {
		return "TbInto [goodsinfomation=" + goodsinfomation + ", goodsdate=" + goodsdate + ", pici=" + pici
				+ ", number=" + number + ", product_time=" + product_time + ", baozhiqi=" + baozhiqi + "]";
	}
	
}
