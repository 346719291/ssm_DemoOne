package com.entity;

public class TbOut {//�����
	
	public String goodsdate;// DATE,-- �� ��������
	public Integer goodscount ;// INT -- �� ��������
	public String shangpingname;//�������Ʒ
	public String cangkuname;//�����λ��
	public String marketid;//СƱ��
	public TbOut() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbOut(String goodsdate, Integer goodscount, String shangpingname, String cangkuname, String marketid) {
		super();
		this.goodsdate = goodsdate;
		this.goodscount = goodscount;
		this.shangpingname = shangpingname;
		this.cangkuname = cangkuname;
		this.marketid = marketid;
	}
	public String getGoodsdate() {
		return goodsdate;
	}
	public void setGoodsdate(String goodsdate) {
		this.goodsdate = goodsdate;
	}
	public Integer getGoodscount() {
		return goodscount;
	}
	public void setGoodscount(Integer goodscount) {
		this.goodscount = goodscount;
	}
	public String getShangpingname() {
		return shangpingname;
	}
	public void setShangpingname(String shangpingname) {
		this.shangpingname = shangpingname;
	}
	public String getCangkuname() {
		return cangkuname;
	}
	public void setCangkuname(String cangkuname) {
		this.cangkuname = cangkuname;
	}
	public String getMarketid() {
		return marketid;
	}
	public void setMarketid(String marketid) {
		this.marketid = marketid;
	}
	@Override
	public String toString() {
		return "TbOut [goodsdate=" + goodsdate + ", goodscount=" + goodscount + ", shangpingname=" + shangpingname
				+ ", cangkuname=" + cangkuname + ", marketid=" + marketid + "]";
	}
	
}
