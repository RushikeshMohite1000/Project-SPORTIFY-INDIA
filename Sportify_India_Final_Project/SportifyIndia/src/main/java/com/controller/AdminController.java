package com.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dao.AdminDao;
import com.dao.CustomerDao;
import com.dao.OrderDao;
import com.dao.SellerDao;
import com.pojo.Admin;
import com.pojo.Customer;
import com.pojo.Order;
import com.pojo.Seller;

@CrossOrigin
@RestController
@RequestMapping("/admin")
public class AdminController
{

	@Autowired
	AdminDao dao;
	
	@Autowired
	OrderDao odao;
	
	@Autowired
	SellerDao sdao;
	
	@Autowired
	CustomerDao custdao;

	@RequestMapping(method = RequestMethod.GET,path = "/signin/{uname}/{password}")
	public String adminsignin(@PathVariable String uname,@PathVariable String password)
	{
		Admin admin =dao.findByusername(uname);
		System.out.println(admin);
		if (admin.getAdminUname().equals(uname) &&  admin.getAdminPassword().equals(password))
		{
			System.out.println("hello world");
			return "success";
		}
		else
		{
			return "failed";

		}
	}
	
	
	
	@GetMapping("/sellerlist")
	public List<Seller> sellerList()
	{
		List<Seller> list=sdao.FindAll();
		list.forEach(e->{System.out.println(e);});
		return list;
	}
	
	
	@GetMapping("/totalrevenue")
	public String  venderpaymentBymonth()
	{
		
		double total = odao.getOrderTotalCost();
		System.out.println(total);
		return "Total revenue= "+total;
	}
	@GetMapping("/totalcount")
	public String  ordcount()
	{
		
		int total = odao.getOrderTotalCount();
		System.out.println(total);
		return "Total orders= "+total;
	}
	@GetMapping("/totalquant")
	public String  ordquant()
	{
		
		int total = odao.getOrderTotalquant();
		System.out.println(total);
		return "Total Selled= "+total;
	}
	@GetMapping("/totalprofit")
	public String  profit()
	{
		
		double total = odao.getOrderTotalCost();
		System.out.println(total);
		return "Total profit= "+(total-12000);
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
/*
	@RequestMapping(method = RequestMethod.GET,path = "/signout")
	public void  Signout(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		
		session.invalidate();
		md.setViewName("index");
		return md;
	}

*/


}
