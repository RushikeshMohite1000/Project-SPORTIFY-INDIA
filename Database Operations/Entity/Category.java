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
@Table(name = "category_table")
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "category_id")
	private int categoryId;
	
	@Column(name = "category_name")
	private String catrgoryName;
	
	@Column(name = "category_image")
	private Blob categoryImage;
	
	@OneToMany(targetEntity = Product.class ,cascade = CascadeType.ALL)
	private Set<Product> products;
	
	@OneToMany(targetEntity = Subcategory.class ,cascade = CascadeType.ALL)
	private Set<Subcategory> subcategories;
	
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
}
