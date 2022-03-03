package study.Entity;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "product_image_table")
public class ProductImage 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_Image_id")
	private int prodImageId;

	//@OneToMany(targetEntity = Product.class)
	//private Product product;
	
	@Column(name = "product_Image_image")
	private Blob  prodImageImage;
	
	@ManyToOne(targetEntity = Product.class )
	private Product product;

	public ProductImage() 
	{
		// TODO Auto-generated constructor stub
	}

	
	

}
