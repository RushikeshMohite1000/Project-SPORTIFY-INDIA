package com.pojo;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sub_category_table")
public class Subcategory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sub_category_id")
	private int subCategoryId;
	
	@Column(name = "sub_category_name")
	private String subCatrgoryName;
	
	@ManyToOne(targetEntity = Category.class )
	private Category category;

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getSubCatrgoryName() {
		return subCatrgoryName;
	}

	public void setSubCatrgoryName(String subCatrgoryName) {
		this.subCatrgoryName = subCatrgoryName;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	

	
}
