package com.entity;

public class SalesDetail {//���ۼ�¼���
	public Integer id;//���ۼ�¼�����
	public Integer goodsid;//������
	public Integer number;//��������
	public Integer marketid;//СƱ��
	public String xiaosoudate;//��������
	public String username;//����Ա����
	public Integer pageno;
	public Integer pagesize;
	public SalesDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SalesDetail(Integer id, Integer goodsid, Integer number, Integer marketid, String xiaosoudate,
			String username, Integer pageno, Integer pagesize) {
		super();
		this.id = id;
		this.goodsid = goodsid;
		this.number = number;
		this.marketid = marketid;
		this.xiaosoudate = xiaosoudate;
		this.username = username;
		this.pageno = pageno;
		this.pagesize = pagesize;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getMarketid() {
		return marketid;
	}
	public void setMarketid(Integer marketid) {
		this.marketid = marketid;
	}
	public String getXiaosoudate() {
		return xiaosoudate;
	}
	public void setXiaosoudate(String xiaosoudate) {
		this.xiaosoudate = xiaosoudate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getPageno() {
		return pageno;
	}
	public void setPageno(Integer pageno) {
		this.pageno = pageno;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	@Override
	public String toString() {
		return "SalesDetail [id=" + id + ", goodsid=" + goodsid + ", number=" + number + ", marketid=" + marketid
				+ ", xiaosoudate=" + xiaosoudate + ", username=" + username + ", pageno=" + pageno + ", pagesize="
				+ pagesize + "]";
	}
	
}
