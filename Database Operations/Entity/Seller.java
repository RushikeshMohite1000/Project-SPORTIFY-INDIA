package study.Entity;

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
	
	@Column(name = "seller_email")
	private String sellerEmail;
	
	@Column(name = "seller_mobno")
	private String sellerMobno;
	
	@Column(name = "seller_uname")
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
	
	@Column(name = "seller_adharno")
	private String sellerAdharNo;
	
	@Column(name = "seller_shopname")
	private String sellerShopName;
	
	@OneToMany(targetEntity = Product.class ,cascade = CascadeType.ALL)
	private Set<Product> products;
	
	
	public Seller() 
	{
		// TODO Auto-generated constructor stub
	}


	
}
