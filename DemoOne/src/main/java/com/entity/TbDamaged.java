package com.entity;

public class TbDamaged {//描述破损信息
	public String badgoodsresoult;// VARCHAR(20),-- 否 原因
	public String badgoodsdata;// DATE,--   否 日期
	public String man;// VARCHAR(10);// ,-- 否 负责人
	public String badgoodsconunt;// INT ,-- 否 破坏信息
	public String badgoodsinfo;//VARCHAR(100) -- 否 商品信息
	public TbDamaged() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbDamaged(String badgoodsresoult, String badgoodsdata, String man, String badgoodsconunt,
			String badgoodsinfo) {
		super();
		this.badgoodsresoult = badgoodsresoult;
		this.badgoodsdata = badgoodsdata;
		this.man = man;
		this.badgoodsconunt = badgoodsconunt;
		this.badgoodsinfo = badgoodsinfo;
	}
	public String getBadgoodsresoult() {
		return badgoodsresoult;
	}
	public void setBadgoodsresoult(String badgoodsresoult) {
		this.badgoodsresoult = badgoodsresoult;
	}
	public String getBadgoodsdata() {
		return badgoodsdata;
	}
	public void setBadgoodsdata(String badgoodsdata) {
		this.badgoodsdata = badgoodsdata;
	}
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getBadgoodsconunt() {
		return badgoodsconunt;
	}
	public void setBadgoodsconunt(String badgoodsconunt) {
		this.badgoodsconunt = badgoodsconunt;
	}
	public String getBadgoodsinfo() {
		return badgoodsinfo;
	}
	public void setBadgoodsinfo(String badgoodsinfo) {
		this.badgoodsinfo = badgoodsinfo;
	}
	@Override
	public String toString() {
		return "TbDamaged [badgoodsresoult=" + badgoodsresoult + ", badgoodsdata=" + badgoodsdata + ", man=" + man
				+ ", badgoodsconunt=" + badgoodsconunt + ", badgoodsinfo=" + badgoodsinfo + "]";
	}
	


}
