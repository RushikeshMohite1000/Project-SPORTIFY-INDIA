package study.Entity;

import java.sql.Date;
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
@Table(name = "order_table")
public class Order 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private int orderId;

	//@OneToMany(targetEntity = Customer.class)
	//private Customer customer;

	//	private Product product;

	//	private DelivaryBoy deliveryBoy;

	

	@Column(name = "order_date")
	private Date date;

	@Column(name = "order_desc")
	private String desc;

	@Column(name = "order_total_cost")
	private double totalCost;

	@Column(name = "order_quantity")
	private int quantity;

	@Column(name = "order_status")
	private String status;

	@Column(name = "order_payment_by")
	private String paymentBy;

	@Column(name = "order_shipping_adress")
	private String shippingAddress;

	@Column(name = "order_city")
	private String city;
	
	
	@ManyToOne(targetEntity = Customer.class)
	private Customer customer;

	@ManyToOne(targetEntity = DelivaryBoy.class)
	private DelivaryBoy deliveryBoy;
	
	@ManyToOne(targetEntity = Product.class)
	private Product product;



}
