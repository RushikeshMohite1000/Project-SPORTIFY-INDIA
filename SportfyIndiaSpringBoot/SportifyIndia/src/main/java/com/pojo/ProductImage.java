package com.pojo;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_image_table")
public class ProductImage 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_Image_id")
	private int prodImageId;


	@Column(name = "product_Image_image")
	private Blob  prodImageImage;
	
	@ManyToOne(targetEntity = Product.class )
	private Product product;

	public int getProdImageId() {
		return prodImageId;
	}

	public void setProdImageId(int prodImageId) {
		this.prodImageId = prodImageId;
	}

	public Blob getProdImageImage() {
		return prodImageImage;
	}

	public void setProdImageImage(Blob prodImageImage) {
		this.prodImageImage = prodImageImage;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	

	
	

}
