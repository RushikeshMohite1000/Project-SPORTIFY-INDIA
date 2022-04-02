package com.pojo;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id")
	private int prodId;
	
	
	@OneToMany(targetEntity = CartItem.class,cascade =CascadeType.ALL)
	private List<CartItem> cartItems;

	@ManyToOne(targetEntity = Seller.class)
	private Seller seller;

	@ManyToOne(targetEntity = Category.class)
	private Category category;


	@Column(name = "product_name")
	private String prodName;

	@Column(name = "product_desc")
	private String prodDesc;

	@Column(name = "product_quantity")
	private int prodQuantity;


	@Column(name = "product_price")
	private int prodPrice;


	@Column(name = "product_discount")
	private int prodDiscount;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	
	public Product( Seller seller, Category category, String prodName,
			String prodDesc, int prodQuantity, int prodPrice, int prodDiscount, List<ProductImage> productImages) {
		this.seller = seller;
		this.category = category;
		this.prodName = prodName;
		this.prodDesc = prodDesc;
		this.prodQuantity = prodQuantity;
		this.prodPrice = prodPrice;
		this.prodDiscount = prodDiscount;
		this.productImages = productImages;
	}

	@OneToMany(targetEntity = ProductImage.class ,cascade = CascadeType.ALL)
     private List<ProductImage> productImages;
	
	@OneToMany(targetEntity = Order.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;

	public int getProdId() {
		return prodId;
	}

	public void setProdId(int prodId) {
		this.prodId = prodId;
	}

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

	public int getProdQuantity() {
		return prodQuantity;
	}

	public void setProdQuantity(int prodQuantity) {
		this.prodQuantity = prodQuantity;
	}

	public int getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}

	public int getProdDiscount() {
		return prodDiscount;
	}

	public void setProdDiscount(int prodDiscount) {
		this.prodDiscount = prodDiscount;
	}

	public List<ProductImage> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<ProductImage> productImages) {
		this.productImages = productImages;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
	


}
