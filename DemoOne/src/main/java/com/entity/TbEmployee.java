package com.entity;

public class TbEmployee {/* Ա���� */
	private String number; // VARCHAR(10),-- ���� 
	private String username; // VARCHAR(15) ,-- ����
	private String userpassword; // VARCHAR(6) ,-- ����
	private String jod ; //CHAR(2) ,-- ְλ
	private String other; // VARCHAR(100) -- �� ���� \\
	public TbEmployee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TbEmployee(String number, String username, String userpassword, String jod, String other) {
		super();
		this.number = number;
		this.username = username;
		this.userpassword = userpassword;
		this.jod = jod;
		other = other;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getJod() {
		return jod;
	}
	public void setJod(String jod) {
		this.jod = jod;
	}
	public String getother() {
		return other;
	}
	public void setother(String other) {
		other = other;
	}
	@Override
	public String toString() {
		return "TbEmployee [number=" + number + ", username=" + username + ", userpassword=" + userpassword + ", jod="
				+ jod + ", other=" + other + "]";
	}
	
	
}
