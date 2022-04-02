package com.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Cart;
import com.pojo.CartItem;
import com.pojo.Product;
import com.repository.CartItemRepository;
import com.repository.CartRepositorty;

@Service
public class CartItemDao {
	
	@Autowired
	CartItemRepository itemrepo;
	
	@Autowired
	CartRepositorty cartrepo;
	
	public List<CartItem> findall(int cartid)
	{
		List<CartItem> list=itemrepo.findAll(cartid);
		return list;
	}
	
	public void deleteAll(int cartid)
	{
		itemrepo.deleteAll(cartid);
	}
	public void Additem(Cart cart,Product p,int quantity)
	{
		List<CartItem> citems=new ArrayList<>();
		CartItem ci=new CartItem(quantity, cart, p);
//		citems.add(ci);
//		p.setCartItems(citems);
//		cart.setCartItems(citems);
//		//ci.setCart(cart);
		cartrepo.save(cart);
		itemrepo.save(ci);
	}
	public CartItem findOne(int cartitemid)
	{
		return itemrepo.findById(cartitemid).get();
	}
	public void deleteOne(CartItem cartitem,Cart c)
	{
		//cartitem.getProduct().setCartItems(null);
		cartitem.setProduct(null);
		cartrepo.save(c);
		itemrepo.save(cartitem);
		itemrepo.deleteById(cartitem.getCartId());;
	}
	public void save(CartItem cartitemid)
	{
		itemrepo.save(cartitemid);
	}
	public void upforpro(int id)
	{
		itemrepo.updatePro(id);
	}

}
