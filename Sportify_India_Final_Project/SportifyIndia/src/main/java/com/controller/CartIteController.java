package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartDao;
import com.dao.CartItemDao;
import com.dao.Categorydao;
import com.dao.ProductDao;
import com.pojo.Cart;
import com.pojo.CartItem;
import com.pojo.Category;
import com.pojo.Product;

@Controller
public class CartIteController 
{
	@Autowired
	CartItemDao itemdao;
	@Autowired
	ProductDao pd;
	@Autowired
	Categorydao catdao;
	
	@RequestMapping(method = RequestMethod.GET,path = "/cartitems")
	public ModelAndView getAll(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		HttpSession session =request.getSession();
		Cart c=(Cart) session.getAttribute("cart");
		List<CartItem> items= itemdao.findall(c.getCartId());
		for(CartItem i:items)
		{
			System.out.println("cart product"+i.getProduct().getProdName());
		}
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("items", items);
		md.setViewName("cart2");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/addtocart")
	@ResponseBody
	public ModelAndView Addcart(HttpServletRequest request,@RequestParam String quantity,@RequestParam int id)
	{
		
		ModelAndView md=new ModelAndView();
		HttpSession session =request.getSession();
		Cart c=(Cart) session.getAttribute("cart");
		try {
			Product p=pd.findone(id);
		System.out.println("name="+p.getProdName());
		int qnty=Integer.parseInt(quantity);
		System.out.println("cartid="+c.getCartId());
		itemdao.Additem(c, p, qnty);
		md.setViewName("redirect:/cartitems");
		return md;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}
	@RequestMapping(method = RequestMethod.GET,path = "/deletecartitem/{id}")
	public ModelAndView Deletecartitem(HttpServletRequest request,@PathVariable int id)
	{
		ModelAndView md=new ModelAndView();
		CartItem cartitem=itemdao.findOne(id);
		HttpSession session =request.getSession();
		Cart c=(Cart) session.getAttribute("cart");
		try {
		c.setCartItems(null);
		itemdao.deleteOne(cartitem,c);
		md.setViewName("redirect:/cartitems");
		return md;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}
}
