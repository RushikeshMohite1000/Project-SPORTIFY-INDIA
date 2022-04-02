package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pojo.Product;

@Repository
public interface ProductRepositry extends JpaRepository<Product, Integer> 
{
	@Query(value="select * from product_table where seller_seller_id=?",nativeQuery = true)
	 public List<Product> getProductBySellerId(int id);
	
	@Query(value="select * from product_table where category_category_id=:id",nativeQuery = true)
	 public List<Product> getProductByCategory(@Param("id") int id);
	
	@Query(value="select * from product_table where product_discount >=:disc",nativeQuery = true)
	 public List<Product> getProductByDiscount(@Param("disc") int disc);
	
	@Query(value="select * from  product_table p where p.product_name like %:keyword%",nativeQuery = true)
	 public List<Product> getProductByNamet(@Param("keyword")String keyword);
}
