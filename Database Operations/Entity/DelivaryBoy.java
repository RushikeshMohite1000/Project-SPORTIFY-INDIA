package study.Entity;

import java.sql.Blob;
import java.sql.Date;
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
@Table(name = "deliveryboy_info_table")
public class DelivaryBoy 
{


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "deliveryboy_Id")
	private int dbId;

	@OneToMany(targetEntity = Product.class ,cascade = CascadeType.ALL)
	private Set<Order> orders;
	
	@Column(name = "deliveryboy_name")
	private String dbName ;

	@Column(name = "deliveryboy_email")
	private String dbEmail;

	@Column(name = "deliveryboy_mobno")
	private String dbMobno;

	@Column(name = "deliveryboy_user_name")
	private String dbuserName;

	@Column(name = "deliveryboy_password")
	private String dbpasssword;

	@Column(name = "deliveryboy_address")
	private String dbAddress;

	@Column(name = "deliveryboy_city")
	private String dbcity;

	@Column(name = "deliveryboy_img")
	private Blob dbImage;

	@Column(name = "deliveryboy_vehicle")
	private String dbVehicle;

	@Column(name = "deliveryboy_licence")
	private String dbLicence;

	@Column(name = "deliveryboy_adhar_card_no")
	private String dbAdharNo;


}
