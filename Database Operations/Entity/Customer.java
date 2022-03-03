package study.Entity;

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
@Table(name = "customer_info_table")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "customer_id")
	private int custId;
	
	@OneToMany(targetEntity = Order.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;
	
	@OneToMany(targetEntity = Cart.class ,cascade = CascadeType.ALL)
	private Set<Cart> carts;
	
	@Column(name = "customer_name")
	private String custName;
	
	@Column(name = "customer_email")
	private String custEmail;
	
	@Column(name = "customer_mobno")
	private String custMobno;
	
	@Column(name = "customer_uname")
	private String custUname;
	
	@Column(name = "customer_password")
	private String custPassword;
	
	@Column(name = "customer_address")
	private String custAddress;
	
	@Column(name = "customer_pincode")
	private String custPincode;
	
	@Column(name = "customer_city")
	private String custCity;
	
	public Customer() 
	{

	}

	
}
