package study.entity;

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
@Table(name = "seller_info_table")
public class Seller {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seller_id")
	private int sellerId;
	
	@Column(name = "seller_name")
	private String sellerName;
	
	@Column(name = "seller_email" , unique = true)
	private String sellerEmail;
	
	@Column(name = "seller_mobno" , unique = true)
	private String sellerMobno;
	
	@Column(name = "seller_uname" , unique = true)
	private String sellerUname;
	
	@Column(name = "seller_password")
	private String sellerPassword;
	
	@Column(name = "seller_address")
	private String sellerAddress;
	
	
	@Column(name = "seller_city")
	private String sellerCity;
	
	@Column(name = "seller_pic")
	private Blob sellerPic;
	
	@Column(name = "seller_gstno")
	private String sellerGstNo;
	
	@Column(name = "seller_adharno" , unique = true)
	private String sellerAdharNo;
	
	@Column(name = "seller_shopname")
	private String sellerShopName;
	
	@OneToMany(targetEntity = Product.class ,cascade = CascadeType.ALL)
	private Set<Product> products;

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getSellerEmail() {
		return sellerEmail;
	}

	public void setSellerEmail(String sellerEmail) {
		this.sellerEmail = sellerEmail;
	}

	public String getSellerMobno() {
		return sellerMobno;
	}

	public void setSellerMobno(String sellerMobno) {
		this.sellerMobno = sellerMobno;
	}

	public String getSellerUname() {
		return sellerUname;
	}

	public void setSellerUname(String sellerUname) {
		this.sellerUname = sellerUname;
	}

	public String getSellerPassword() {
		return sellerPassword;
	}

	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}

	public String getSellerAddress() {
		return sellerAddress;
	}

	public void setSellerAddress(String sellerAddress) {
		this.sellerAddress = sellerAddress;
	}

	public String getSellerCity() {
		return sellerCity;
	}

	public void setSellerCity(String sellerCity) {
		this.sellerCity = sellerCity;
	}

	public Blob getSellerPic() {
		return sellerPic;
	}

	public void setSellerPic(Blob sellerPic) {
		this.sellerPic = sellerPic;
	}

	public String getSellerGstNo() {
		return sellerGstNo;
	}

	public void setSellerGstNo(String sellerGstNo) {
		this.sellerGstNo = sellerGstNo;
	}

	public String getSellerAdharNo() {
		return sellerAdharNo;
	}

	public void setSellerAdharNo(String sellerAdharNo) {
		this.sellerAdharNo = sellerAdharNo;
	}

	public String getSellerShopName() {
		return sellerShopName;
	}

	public void setSellerShopName(String sellerShopName) {
		this.sellerShopName = sellerShopName;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	
	
}
