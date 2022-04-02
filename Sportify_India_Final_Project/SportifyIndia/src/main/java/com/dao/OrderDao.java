package com.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Order;
import com.repository.OrderRepository;



@Service
public class OrderDao {

	@Autowired
	OrderRepository repo;

	public void saveorder(Order o)
	{
		repo.save(o);
	}

	public void deleteOrder(int id) {
		//repo.deleteBy(id);
		repo.deleteById(id);
	}


	public void updateOrder(Integer id,String status) {

		Order o = repo.findById(id).get();
		o.setStatus(status);
		repo.save(o);
	}

	public List<Order> getCustOrders(int id){ 

		return repo.getOrderByCustId(id);
	}
	public List<Order> vedorOrders(int id){ 

		return repo.getOrdervendor(id);
	}
	public Order getOne(int id)
	{
		return repo.findById(id).get();
	}
	public void deleteproOrder(int id) {
		repo.deleteBypro(id);
	}
//	public List<Order> getReport(){ 
//
//		return repo.findAll();
//	}
	public double getOrderTotalCost()
	{
		return repo.OrderTotal();
	}
	public int getOrderTotalCount()
	{
		return repo.Ordercount();
	}
	public int getOrderTotalquant()
	{
		return repo.Orderquantity();
	}

}


