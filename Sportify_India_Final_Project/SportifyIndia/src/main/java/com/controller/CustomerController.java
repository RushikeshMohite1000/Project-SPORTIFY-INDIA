package com.controller;

import java.net.http.HttpResponse;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartDao;
import com.dao.CartItemDao;
import com.dao.Categorydao;
import com.dao.CustomerDao;
import com.pojo.Cart;
import com.pojo.CartItem;
import com.pojo.Category;
import com.pojo.Customer;

import antlr.collections.List;


@Controller
public class CustomerController {

	
	@Autowired
	CustomerDao cdao;
	@Autowired
	CartItemDao citemdao;
	@Autowired 
	CartDao cartdao;
	@Autowired
	Categorydao catdao;
	
	@RequestMapping(method = RequestMethod.GET,path ="/customer")
	public ModelAndView Signup()
	{
		ModelAndView md=new ModelAndView();
		java.util.List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.setViewName("CustomerSignUp1");
		return md;
	}	
	@RequestMapping(method = RequestMethod.POST,path = "/signup")
	public ModelAndView Signup(@RequestParam String name,@RequestParam String email,@RequestParam String mobno,@RequestParam String uname,@RequestParam String password,@RequestParam String address,@RequestParam String pincode,@RequestParam String city)
	{
		ModelAndView md=new ModelAndView();
		cdao.insert(name, email, mobno, uname, password, address, pincode, city);
		md.setViewName("redirect:/index");
		return md;
	}
	@RequestMapping(method = RequestMethod.POST,path = "/signin")
	public ModelAndView Signin(HttpServletRequest request,@RequestParam String uname,@RequestParam String password)
	{
		ModelAndView md= new ModelAndView();
		
		HttpSession session =request.getSession();
		
		Customer cus =cdao.findByusername(uname);
		if (cus.getCustUname().equals(uname) &&  cus.getCustPassword().equals(password))
		{
			Set<Cart> cartset=new HashSet<Cart>();
			Cart cart=new Cart("empty",cus);
			cartset.add(cart);
			cus.setCarts(cartset);
			cartdao.save(cart);
			cdao.savecart(cus);
			
			session.setAttribute("customer", cus);
			session.setAttribute("cart", cart);
			md.setViewName("redirect:/index");
			return  md;
		}
		else
		{
			md.setViewName("Error");
			md.addObject("error","Incorrect Log In");
			return md;
		}	
	}
	@RequestMapping(method = RequestMethod.GET,path = "/signout")
	public ModelAndView Signout(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		HttpSession session =request.getSession();
		Customer cus=(Customer) session.getAttribute("customer");
		try {
		cus.setCarts(null);
		cdao.savecart(cus);
		System.out.println(cus.getCustId());
		Cart cart=(Cart) session.getAttribute("cart");
		System.out.println(cart.getCartId());
		citemdao.deleteAll(cart.getCartId());
		cartdao.CartDelete(cart.getCartId());
//		cart.setCustomer(null);
//		cart.setCartItems(null);
//		cartdao.save(cart);
		
		session.invalidate();
		md.setViewName("redirect:/index");
		return md;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}

}
