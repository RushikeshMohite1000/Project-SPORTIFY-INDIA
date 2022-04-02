package com.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart_item_table")
public class CartItem {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cart_item_id")
	private int cartId;
	
	@Column(name = "cart_item_quantity")
	private int cartQuantity;
	
	@ManyToOne(targetEntity = Cart.class )
	private Cart cart;
	
	@ManyToOne(targetEntity = Product.class)
	private Product product;

	public CartItem() {
		// TODO Auto-generated constructor stub
	}
	public CartItem(int cartQuantity, Cart cart, Product product) {
		this.cartQuantity = cartQuantity;
		this.cart = cart;
		this.product = product;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}
	

	
}
