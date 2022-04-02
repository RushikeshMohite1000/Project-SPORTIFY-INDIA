package com.pojo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_table")
public class Admin 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "admin_id")
	private int adminId;


	@Column(name = "admin_name")
	private String adminName;

	@Column(name = "admin_uname" , unique = true )
	private String adminUname;

	@Column(name = "admin_password")
	private String adminPassword;

	@Column(name = "admin_email" , unique = true)
	private String adminEmail;

	@Column(name = "admin_mobno" , unique = true)
	private String adminMobno;

	@Column(name = "admin_city")
	private String adminCity;


	public Admin() {
		// TODO Auto-generated constructor stub
	}


	public Admin(String adminName, String adminUname, String adminPassword, String adminEmail,
			String adminMobno, String adminCity) {
		super();

		this.adminName = adminName;
		this.adminUname = adminUname;
		this.adminPassword = adminPassword;
		this.adminEmail = adminEmail;
		this.adminMobno = adminMobno;
		this.adminCity = adminCity;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminUname() {
		return adminUname;
	}

	public void setAdminUname(String adminUname) {
		this.adminUname = adminUname;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminMobno() {
		return adminMobno;
	}

	public void setAdminMobno(String adminMobno) {
		this.adminMobno = adminMobno;
	}

	public String getAdminCity() {
		return adminCity;
	}

	public void setAdminCity(String adminCity) {
		this.adminCity = adminCity;
	}


	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", adminUname=" + adminUname
				+ ", adminPassword=" + adminPassword + ", adminEmail=" + adminEmail + ", adminMobno=" + adminMobno
				+ ", adminCity=" + adminCity + "]";
	}


	
/*
	@Override
	public boolean equals(Object o) 
	{
		if (this == o) return true;
		if (!(o instanceof Admin)) return false;
		Admin admin = (Admin) o;
		return Objects.equals(adminUname, admin.adminUname) && Objects.equals(adminPassword, admin.adminPassword);
	}

*/

}
