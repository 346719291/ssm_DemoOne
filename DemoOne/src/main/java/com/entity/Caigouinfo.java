package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseCaigouinfo")
public class Caigouinfo {//采购信息表
	public String id;// VARCHAR(20) NOT NULL,-- 编号	
	public String caihoutime ;// String NOT NULL,-- 采购时间
	public String goods;// VARCHAR(20) NOT NULL,-- 采购物品
	public String gongyingshang ;//VARCHAR(20) NOT NULL,-- 供应商
	public String price;// DOUBLE NOT NULL,-- 单价
	public String count;//  VARCHAR(100) NOT NULL,-- 数量
	public String man ;//VARCHAR(20) NOT NULL,-- 采购员
	public String stacus ;//VARCHAR(20) NOT NULL -- 审核状态
	public String dindanhao;//订单号
	
	public String goodsname ;//VARCHAR(20) NOT NULL,-- 物料名称
	public String typeofgoods;// VARCHAR(20) NOT NULL,-- 物料类型
	public String guige ;//VARCHAR(20) NOT NULL,-- 物料规格
	public String danwei;// VARCHAR(10) NOT NULL --  常用单位 
	
	public String username;// VARCHAR(20) NOT NULL, -- 供应商名称
	public String gongyingshangman;// VARCHAR(10) NOT NULL,-- 供应商联系人
	public String phone;// VARCHAR(11) NOT NULL,-- 联系电话
	public String otherOfWay;// VARCHAR(30) NOT NULL,-- 其他联系方式
	public String gysposition;// VARCHAR(30) NOT NULL-- 供应商位置
	public Caigouinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Caigouinfo(String id, String caihoutime, String goods, String gongyingshang, String price, String count,
			String man, String stacus, String dindanhao, String goodsname, String typeofgoods, String guige,
			String danwei, String username, String gongyingshangman, String phone, String otherOfWay,
			String gysposition) {
		super();
		this.id = id;
		this.caihoutime = caihoutime;
		this.goods = goods;
		this.gongyingshang = gongyingshang;
		this.price = price;
		this.count = count;
		this.man = man;
		this.stacus = stacus;
		this.dindanhao = dindanhao;
		this.goodsname = goodsname;
		this.typeofgoods = typeofgoods;
		this.guige = guige;
		this.danwei = danwei;
		this.username = username;
		this.gongyingshangman = gongyingshangman;
		this.phone = phone;
		this.otherOfWay = otherOfWay;
		this.gysposition = gysposition;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCaihoutime() {
		return caihoutime;
	}
	public void setCaihoutime(String caihoutime) {
		this.caihoutime = caihoutime;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	public String getGongyingshang() {
		return gongyingshang;
	}
	public void setGongyingshang(String gongyingshang) {
		this.gongyingshang = gongyingshang;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getMan() {
		return man;
	}
	public void setMan(String man) {
		this.man = man;
	}
	public String getStacus() {
		return stacus;
	}
	public void setStacus(String stacus) {
		this.stacus = stacus;
	}
	public String getDindanhao() {
		return dindanhao;
	}
	public void setDindanhao(String dindanhao) {
		this.dindanhao = dindanhao;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGongyingshangman() {
		return gongyingshangman;
	}
	public void setGongyingshangman(String gongyingshangman) {
		this.gongyingshangman = gongyingshangman;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getOtherOfWay() {
		return otherOfWay;
	}
	public void setOtherOfWay(String otherOfWay) {
		this.otherOfWay = otherOfWay;
	}
	public String getGysposition() {
		return gysposition;
	}
	public void setGysposition(String gysposition) {
		this.gysposition = gysposition;
	}
	@Override
	public String toString() {
		return "Caigouinfo [id=" + id + ", caihoutime=" + caihoutime + ", goods=" + goods + ", gongyingshang="
				+ gongyingshang + ", price=" + price + ", count=" + count + ", man=" + man + ", stacus=" + stacus
				+ ", dindanhao=" + dindanhao + ", goodsname=" + goodsname + ", typeofgoods=" + typeofgoods + ", guige="
				+ guige + ", danwei=" + danwei + ", username=" + username + ", gongyingshangman=" + gongyingshangman
				+ ", phone=" + phone + ", otherOfWay=" + otherOfWay + ", gysposition=" + gysposition + "]";
	}
	
}
