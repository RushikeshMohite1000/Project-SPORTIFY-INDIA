package study.Entity;


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
	
	
	public Subcategory() {
		// TODO Auto-generated constructor stub
	}
}
