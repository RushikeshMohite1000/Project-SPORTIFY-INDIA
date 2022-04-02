package com.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartItemDao;
import com.dao.Categorydao;
import com.dao.OrderDao;
import com.dao.ProductDao;
import com.pojo.Cart;
import com.pojo.CartItem;
import com.pojo.Category;
import com.pojo.Customer;
import com.pojo.Order;
import com.pojo.Product;



@Controller
public class OrderController {

	@Autowired
	CartItemDao itemdao;
	@Autowired
	OrderDao odao;
	@Autowired
	ProductDao pdao;
	@Autowired
	Categorydao catdao;
	
	@RequestMapping(method = RequestMethod.GET,path = "/orderdetail")
	public ModelAndView Addorder(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		HttpSession session=request.getSession();
		Cart c=(Cart)session.getAttribute("cart");
		List<CartItem> items= itemdao.findall(c.getCartId());
		System.out.println(c.getCartId());
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("cartitems",items);
		md.setViewName("order2");
		return md;
	}
	@RequestMapping(method = RequestMethod.POST,path = "/orderplace")
	public ModelAndView Placeorder(HttpServletRequest request,@RequestParam String name,@RequestParam String address,@RequestParam String city,@RequestParam String pin,@RequestParam String payment)
	{
		HttpSession session=request.getSession();
		ModelAndView md=new ModelAndView();
		Customer c=(Customer)session.getAttribute("customer");
		Date d=Date.valueOf(LocalDate.now());
		Cart cart=(Cart)session.getAttribute("cart");
		try {
		List<CartItem> items= itemdao.findall(cart.getCartId());
		for(CartItem i:items)
		{
			Product p=i.getProduct();
			Order order=new Order(c,d,p,p.getProdName()+"of category "+p.getCategory().getCatrgoryName(),(p.getProdPrice()*(i.getProduct().getProdDiscount()*0.01)*i.getCartQuantity()),i.getCartQuantity(),"ordered",payment,address,city);
			odao.saveorder(order);
			int newq=p.getProdQuantity()-i.getCartQuantity();
			p.setProdQuantity(newq);
			pdao.save(p);
		}
		itemdao.deleteAll(cart.getCartId());
		md.setViewName("redirect:/index");
		return md;}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}

	@GetMapping("/getcustorders")
	public ModelAndView getListOfOrders2(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		//int i = Integer.parseInt(id);
		HttpSession session=request.getSession();
		Customer c=(Customer)session.getAttribute("customer");
		//System.out.println(i);
		List<Order> list = odao.getCustOrders(c.getCustId());
		List<Category> clist=catdao.findall();
		mv.addObject("category",clist);
		mv.addObject("orders", list);  
		mv.setViewName("CustomerOrders2");  
		return mv;
	}

	@GetMapping("/deleteorder")
	public ModelAndView deleteOrder1(@RequestParam int id) {
		ModelAndView md=new ModelAndView();
		try
		{
		odao.deleteOrder(id);
		md.setViewName("redirect:/allproduct");
		return md ;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}
	
	@GetMapping("/upateorder")
	public ModelAndView updateOrder1(@RequestParam int id) {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("order", odao.getOne(id));
		md.setViewName("Orderupdate");
		return md ;
	}

	
	@PostMapping("/update1")
	public ModelAndView update1(@RequestParam int id,@RequestParam String status) {
		ModelAndView md=new ModelAndView();
		odao.updateOrder(id, status);
		md.setViewName("redirect:/allproduct");
		return md ;
	}
	@GetMapping("/vieworder")
	public ModelAndView showorders(@RequestParam int id) {
		
		ModelAndView mv = new ModelAndView();
		List<Order> orders=odao.vedorOrders(id);
		List<Category> clist=catdao.findall();
		mv.addObject("category",clist);
		mv.addObject("orders", orders);
		mv.setViewName("VendorOrders");
		return mv;
	}
	@GetMapping("/cancelorder")
	public ModelAndView cancelOrder1(@RequestParam int id) {
		ModelAndView md=new ModelAndView();
		try
		{
		Order o=odao.getOne(id);
		Product p=o.getProduct();
		p.setProdQuantity((p.getProdQuantity()+o.getQuantity()));
		pdao.save(p);
		odao.deleteOrder(id);
		md.setViewName("redirect:/getcustorders");
		return md ;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}

}
