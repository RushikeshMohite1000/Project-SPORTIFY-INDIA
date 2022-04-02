package com.pojo;

import java.sql.Blob;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "deliveryboy_info_table")
public class DelivaryBoy 
{


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "deliveryboy_Id")
	private int dbId;

	@Column(name = "deliveryboy_name")
	private String dbName ;

	@Column(name = "deliveryboy_email" , unique = true)
	private String dbEmail;

	@Column(name = "deliveryboy_mobno" , unique = true)
	private int dbMobno;

	@Column(name = "deliveryboy_user_name" , unique = true)
	private String dbuserName;

	@Column(name = "deliveryboy_password")
	private String dbpasssword;

	@Column(name = "deliveryboy_address")
	private String dbAddress;

	@Column(name = "deliveryboy_city")
	private String dbcity;

	@Column(name = "deliveryboy_img")
	private Blob dbImage;

	@Column(name = "deliveryboy_vehicle")
	private String dbVehicle;

	@Column(name = "deliveryboy_licence")
	private String dbLicence;

	@Column(name = "deliveryboy_adhar_card_no" , unique = true)
	private int dbAdharNo;


	@OneToMany(targetEntity = Product.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;


	public int getDbId() {
		return dbId;
	}


	public void setDbId(int dbId) {
		this.dbId = dbId;
	}


	public String getDbName() {
		return dbName;
	}


	public void setDbName(String dbName) {
		this.dbName = dbName;
	}


	public String getDbEmail() {
		return dbEmail;
	}


	public void setDbEmail(String dbEmail) {
		this.dbEmail = dbEmail;
	}


	public int getDbMobno() {
		return dbMobno;
	}


	public void setDbMobno(int dbMobno) {
		this.dbMobno = dbMobno;
	}


	public String getDbuserName() {
		return dbuserName;
	}


	public void setDbuserName(String dbuserName) {
		this.dbuserName = dbuserName;
	}


	public String getDbpasssword() {
		return dbpasssword;
	}


	public void setDbpasssword(String dbpasssword) {
		this.dbpasssword = dbpasssword;
	}


	public String getDbAddress() {
		return dbAddress;
	}


	public void setDbAddress(String dbAddress) {
		this.dbAddress = dbAddress;
	}


	public String getDbcity() {
		return dbcity;
	}


	public void setDbcity(String dbcity) {
		this.dbcity = dbcity;
	}


	public Blob getDbImage() {
		return dbImage;
	}


	public void setDbImage(Blob dbImage) {
		this.dbImage = dbImage;
	}


	public String getDbVehicle() {
		return dbVehicle;
	}


	public void setDbVehicle(String dbVehicle) {
		this.dbVehicle = dbVehicle;
	}


	public String getDbLicence() {
		return dbLicence;
	}


	public void setDbLicence(String dbLicence) {
		this.dbLicence = dbLicence;
	}


	public int getDbAdharNo() {
		return dbAdharNo;
	}


	public void setDbAdharNo(int dbAdharNo) {
		this.dbAdharNo = dbAdharNo;
	}


	public Set<Order> getOrders() {
		return orders;
	}


	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
	
}
