package com.entity;

public class TbStoreinfo { //库存信息表
	public String number;// VARCHAR(10),-- 否 数量
	public String datetime;// DATE ,--  否 生产日期 
	public String lasttime;// DATE,--  否 保质期
	public String more;// INT ,-- 否 存库上线
	public String little ;//INT,--  否 存库下线
	public String count;// INT ,-- 否 提醒
	public String cunkuinfo;// VARCHAR(100) ,-- 否 存库信息、
	public String tixindate;// DATE -- 否 提醒日期
	public Integer pageno;
	public Integer pagesize;
	public String erweima;//二维码
	public TbStoreinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbStoreinfo(String number, String datetime, String lasttime, String more, String little, String count,
			String cunkuinfo, String tixindate, Integer pageno, Integer pagesize, String erweima) {
		super();
		this.number = number;
		this.datetime = datetime;
		this.lasttime = lasttime;
		this.more = more;
		this.little = little;
		this.count = count;
		this.cunkuinfo = cunkuinfo;
		this.tixindate = tixindate;
		this.pageno = pageno;
		this.pagesize = pagesize;
		this.erweima = erweima;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getLasttime() {
		return lasttime;
	}
	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}
	public String getMore() {
		return more;
	}
	public void setMore(String more) {
		this.more = more;
	}
	public String getLittle() {
		return little;
	}
	public void setLittle(String little) {
		this.little = little;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getCunkuinfo() {
		return cunkuinfo;
	}
	public void setCunkuinfo(String cunkuinfo) {
		this.cunkuinfo = cunkuinfo;
	}
	public String getTixindate() {
		return tixindate;
	}
	public void setTixindate(String tixindate) {
		this.tixindate = tixindate;
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
	public String getErweima() {
		return erweima;
	}
	public void setErweima(String erweima) {
		this.erweima = erweima;
	}
	@Override
	public String toString() {
		return "TbStoreinfo [number=" + number + ", datetime=" + datetime + ", lasttime=" + lasttime + ", more=" + more
				+ ", little=" + little + ", count=" + count + ", cunkuinfo=" + cunkuinfo + ", tixindate=" + tixindate
				+ ", pageno=" + pageno + ", pagesize=" + pagesize + ", erweima=" + erweima + "]";
	}
	
}
