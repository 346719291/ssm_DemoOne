package com.entity;

public class TbDamaged {//����������Ϣ
	public String badgoodsresoult;// VARCHAR(20),-- �� ԭ��
	public String badgoodsdata;// DATE,--   �� ����
	public String man;// VARCHAR(10);// ,-- �� ������
	public String badgoodsconunt;// INT ,-- �� �ƻ���Ϣ
	public String badgoodsinfo;//VARCHAR(100) -- �� ��Ʒ��Ϣ
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
