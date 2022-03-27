package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CustomerDao;


@Controller
public class CustomerController {

	
	@Autowired
	CustomerDao cdao;
	
	@RequestMapping(method = RequestMethod.GET,path = "/customer")
	public ModelAndView Signup()
	{
		ModelAndView md=new ModelAndView();
		md.setViewName("CustomerSignUp1");
		return md;
	}
	
	@RequestMapping(method = RequestMethod.POST,path = "/signup")
	public ModelAndView Signup(@RequestParam String name,@RequestParam String email,@RequestParam String mobno,@RequestParam String uname,@RequestParam String password,@RequestParam String address,@RequestParam String pincode,@RequestParam String city)
	{
		ModelAndView md=new ModelAndView();
		cdao.insert(name, email, mobno, uname, password, address, pincode, city);
		md.setViewName("index");
		return md;
	}

}
