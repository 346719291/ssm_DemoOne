package com.entity;

public class Admin {//员工
	public String adminname;//用户名
	public String adminpassword;
	public String adminidcard;
	public String sex;
	public String admintel;
	public String adminaddress;
	public String adminemail;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(String adminname, String adminpassword, String adminidcard, String sex, String admintel,
			String adminaddress, String adminemail) {
		super();
		this.adminname = adminname;
		this.adminpassword = adminpassword;
		this.adminidcard = adminidcard;
		this.sex = sex;
		this.admintel = admintel;
		this.adminaddress = adminaddress;
		this.adminemail = adminemail;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}
	public String getAdminidcard() {
		return adminidcard;
	}
	public void setAdminidcard(String adminidcard) {
		this.adminidcard = adminidcard;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAdmintel() {
		return admintel;
	}
	public void setAdmintel(String admintel) {
		this.admintel = admintel;
	}
	public String getAdminaddress() {
		return adminaddress;
	}
	public void setAdminaddress(String adminaddress) {
		this.adminaddress = adminaddress;
	}
	public String getAdminemail() {
		return adminemail;
	}
	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}
	@Override
	public String toString() {
		return "Admin [adminname=" + adminname + ", adminpassword=" + adminpassword + ", adminidcard=" + adminidcard
				+ ", sex=" + sex + ", admintel=" + admintel + ", adminaddress=" + adminaddress + ", adminemail="
				+ adminemail + "]";
	}

}
