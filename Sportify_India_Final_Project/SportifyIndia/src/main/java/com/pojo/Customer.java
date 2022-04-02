package com.pojo;

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
@Table(name = "customer_info_table")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "customer_id")
	private int custId;
	
	@OneToMany(targetEntity = Order.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;
	
	@OneToMany(targetEntity = Cart.class,cascade =CascadeType.ALL)
	private Set<Cart> carts;
	
	@Column(name = "customer_name")
	private String custName;
	
	@Column(name = "customer_email" , unique = true)
	private String custEmail;
	
	@Column(name = "customer_mobno" , unique = true)
	private String custMobno;
	
	@Column(name = "customer_uname" , unique = true )
	private String custUname;
	
	@Column(name = "customer_password")
	private String custPassword;
	
	@Column(name = "customer_address")
	private String custAddress;
	
	@Column(name = "customer_pincode")
	private String custPincode;
	
	@Column(name = "customer_city")
	private String custCity;
	
	public Customer() {
	}

	public Customer(String custName, String custEmail, String custMobno,
			String custUname, String custPassword, String custAddress, String custPincode, String custCity) {
		this.custName = custName;
		this.custEmail = custEmail;
		this.custMobno = custMobno;
		this.custUname = custUname;
		this.custPassword = custPassword;
		this.custAddress = custAddress;
		this.custPincode = custPincode;
		this.custCity = custCity;
	}

	public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Set<Cart> getCarts() {
		return carts;
	}

	public void setCarts(Set<Cart> carts) {
		this.carts = carts;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustEmail() {
		return custEmail;
	}

	public void setCustEmail(String custEmail) {
		this.custEmail = custEmail;
	}

	public String getCustMobno() {
		return custMobno;
	}

	public void setCustMobno(String custMobno) {
		this.custMobno = custMobno;
	}

	public String getCustUname() {
		return custUname;
	}

	public void setCustUname(String custUname) {
		this.custUname = custUname;
	}

	public String getCustPassword() {
		return custPassword;
	}

	public void setCustPassword(String custPassword) {
		this.custPassword = custPassword;
	}

	public String getCustAddress() {
		return custAddress;
	}

	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}

	public String getCustPincode() {
		return custPincode;
	}

	public void setCustPincode(String custPincode) {
		this.custPincode = custPincode;
	}

	public String getCustCity() {
		return custCity;
	}

	public void setCustCity(String custCity) {
		this.custCity = custCity;
	}
	
	

	
}
