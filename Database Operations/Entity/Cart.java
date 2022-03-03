package study.Entity;


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
@Table(name = "cart_table")
public class Cart 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cart_id")
	private int cartId;
	
	@Column(name = "cart_status")
	private String cartStatus;
	

	@ManyToOne(targetEntity = Customer.class )
	private Customer customer; 
	
	@OneToMany(targetEntity = CartItem.class ,cascade = CascadeType.ALL)
	private Set<CartItem> cartItems;
	
	
	public Cart() {
		
	}
}



