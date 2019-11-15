package com.entity;

public class Sales {//销售记录表
	public Integer id;//id
	public Integer memberid;//会员号
	public Integer marketid;//小票号
	public Integer credits;//积分
	public String xiaosoudate;//销售日期
	public Integer pageno;
	public Integer pagesize;
	public Sales() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sales(Integer id, Integer memberid, Integer marketid, Integer credits, String xiaosoudate, Integer pageno,
			Integer pagesize) {
		super();
		this.id = id;
		this.memberid = memberid;
		this.marketid = marketid;
		this.credits = credits;
		this.xiaosoudate = xiaosoudate;
		this.pageno = pageno;
		this.pagesize = pagesize;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public Integer getMarketid() {
		return marketid;
	}
	public void setMarketid(Integer marketid) {
		this.marketid = marketid;
	}
	public Integer getCredits() {
		return credits;
	}
	public void setCredits(Integer credits) {
		this.credits = credits;
	}
	public String getXiaosoudate() {
		return xiaosoudate;
	}
	public void setXiaosoudate(String xiaosoudate) {
		this.xiaosoudate = xiaosoudate;
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
		return "Sales [id=" + id + ", memberid=" + memberid + ", marketid=" + marketid + ", credits=" + credits
				+ ", xiaosoudate=" + xiaosoudate + ", pageno=" + pageno + ", pagesize=" + pagesize + "]";
	}
	
}
