package study.Entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id")
	private int prodId;

	@OneToMany(targetEntity = CartItem.class ,cascade = CascadeType.ALL)
	private Set<CartItem> cartItems;

	@ManyToOne(targetEntity = Seller.class)
	private Seller seller;

	@ManyToOne(targetEntity = Category.class)
	private Category category;


	//private Category category;

	

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
	
	@OneToMany(targetEntity = ProductImage.class ,cascade = CascadeType.ALL)
     private Set<ProductImage> productImages;
	
	@OneToMany(targetEntity = Order.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;
	
	public Product() 
	{
		// TODO Auto-generated constructor stub
	}


}
