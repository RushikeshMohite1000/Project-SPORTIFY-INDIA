package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Cart;
import com.pojo.CartItem;
import com.repository.CartRepositorty;

@Service
public class CartDao {
	
	@Autowired
	CartRepositorty cartrepo;

	public void CartDelete(int id)
	{
		cartrepo.deleteById(id);
	}
	public void save(Cart cart)
	{
		cartrepo.save(cart);
	}
}
