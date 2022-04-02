package com.repository;



import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;
import javax.websocket.server.PathParam;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.pojo.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer>{
	
	@Query(value="select * from order_table where customer_customer_id=?",nativeQuery = true)
	 public List<Order> getOrderByCustId(int id);
	
	@Query(value="select * from order_table where product_product_id=?",nativeQuery = true)
	 public List<Order> getOrdervendor(int id);
	
	@Query(value="delete from order_table where product_product_id=?",nativeQuery = true)
	@Modifying
	@Transactional
	public void deleteBypro(int id);
	
	@Query(value = "select sum(order_total_cost) from order_table" ,nativeQuery = true)
	public double OrderTotal();
	@Query(value = "select count(*) from order_table" ,nativeQuery = true)
	public int Ordercount();
	@Query(value = "select sum(order_quantity) from order_table" ,nativeQuery = true)
	public int Orderquantity();
	
//	@Query(value = "select year(order_date) as year ,month(order_date) as month ,sum( order_quantity) as quantity,sum(order_total_cost) as total,count(*) as orders from order_table group by year(order_date),month(order_date) order by year(order_date),month(order_date)" ,nativeQuery = true)
//	public List<Map<String,Object>> AdminReport(); 
	
}

