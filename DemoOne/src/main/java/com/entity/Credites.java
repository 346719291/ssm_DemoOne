package com.entity;

public class Credites {
	public String id;
	public String cardnumber;
	public String credidsname;
	public Integer credits;
	public String discountrate;
	public String creditsqq;
	public String creditsaddress;
	public String dirthday;
	public Credites() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Credites(String id, String cardnumber, String credidsname, Integer credits, String discountrate,
			String creditsqq, String creditsaddress, String dirthday) {
		super();
		this.id = id;
		this.cardnumber = cardnumber;
		this.credidsname = credidsname;
		this.credits = credits;
		this.discountrate = discountrate;
		this.creditsqq = creditsqq;
		this.creditsaddress = creditsaddress;
		this.dirthday = dirthday;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getCredidsname() {
		return credidsname;
	}
	public void setCredidsname(String credidsname) {
		this.credidsname = credidsname;
	}
	public Integer getCredits() {
		return credits;
	}
	public void setCredits(Integer credits) {
		this.credits = credits;
	}
	public String getDiscountrate() {
		return discountrate;
	}
	public void setDiscountrate(String discountrate) {
		this.discountrate = discountrate;
	}
	public String getCreditsqq() {
		return creditsqq;
	}
	public void setCreditsqq(String creditsqq) {
		this.creditsqq = creditsqq;
	}
	public String getCreditsaddress() {
		return creditsaddress;
	}
	public void setCreditsaddress(String creditsaddress) {
		this.creditsaddress = creditsaddress;
	}
	public String getDirthday() {
		return dirthday;
	}
	public void setDirthday(String dirthday) {
		this.dirthday = dirthday;
	}
	@Override
	public String toString() {
		return "Credites [id=" + id + ", cardnumber=" + cardnumber + ", credidsname=" + credidsname + ", credits="
				+ credits + ", discountrate=" + discountrate + ", creditsqq=" + creditsqq + ", creditsaddress="
				+ creditsaddress + ", dirthday=" + dirthday + "]";
	}
	
}
