package com.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.pojo.CartItem;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {
	
	@Query(value = "select * from cart_item_table where cart_cart_id=?",nativeQuery = true)
	public List<CartItem> findAll(int id);
	
	@Query(value = "delete from cart_item_table where cart_cart_id=?",nativeQuery = true)
	@Modifying
	@Transactional
	public void deleteAll(int id);
	
	@Query(value = "update cart_item_table set product_product_id=null where product_product_id=?",nativeQuery = true)
	@Modifying
	@Transactional
	public void updatePro(int id);

}
