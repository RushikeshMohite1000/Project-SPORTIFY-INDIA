package study.Entity;

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
	
	@ManyToOne(targetEntity = Cart.class )
	private Cart cart;
	
	@ManyToOne(targetEntity = Product.class )
	private Product product;
	
	
	public CartItem() {
	
	}
}
