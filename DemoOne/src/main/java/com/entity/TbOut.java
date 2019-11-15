package com.entity;

public class TbOut {//出库表
	
	public String goodsdate;// DATE,-- 否 出库日期
	public Integer goodscount ;// INT -- 否 出库数量
	public String shangpingname;//出库的物品
	public String cangkuname;//出库的位置
	public String marketid;//小票号
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
