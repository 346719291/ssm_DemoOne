package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("BaseGongyinshaginfo")
public class Gongyinshaginfo {
	public String id ;// VARCHAR(30) PRIMARY KEY, -- �������
	public String username;// VARCHAR(20) NOT NULL, -- ��Ӧ������
	public String gongyingshangman;// VARCHAR(10) NOT NULL,-- ��Ӧ����ϵ��
	public String phone;// VARCHAR(11) NOT NULL,-- ��ϵ�绰
	public String otherOfWay;// VARCHAR(30) NOT NULL,-- ������ϵ��ʽ
	public String gysposition;// VARCHAR(30) NOT NULL-- ��Ӧ��λ��
	public Gongyinshaginfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Gongyinshaginfo(String id, String username, String gongyingshangman, String phone, String otherOfWay,
			String gysposition) {
		super();
		this.id = id;
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
		return "Gongyinshaginfo [id=" + id + ", username=" + username + ", gongyingshangman=" + gongyingshangman
				+ ", phone=" + phone + ", otherOfWay=" + otherOfWay + ", gysposition=" + gysposition + "]";
	}
	
}
