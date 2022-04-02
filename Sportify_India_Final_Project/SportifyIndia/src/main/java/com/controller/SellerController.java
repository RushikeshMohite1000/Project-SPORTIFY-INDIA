package com.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Blob;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.SellerDao;
import com.pojo.Seller;

@Controller
public class SellerController {

	public static String uploaddir="C:\\Users\\Rushikesh\\Desktop\\SportfyIndiaSpringBoot\\SportifyIndia\\src\\main\\resources\\static\\img";
	@Autowired
	SellerDao sdao;
	
	@RequestMapping(method = RequestMethod.GET,path = "/seller")
	public ModelAndView Signup()
	{
		ModelAndView md=new ModelAndView();
		md.setViewName("sellerSignUp2");
		return md;
	}
	
	@RequestMapping(method = RequestMethod.POST,path = "/sellersignup")
	public ModelAndView Signup(@RequestParam String name,@RequestParam String email,@RequestParam String mobno,@RequestParam String uname,@RequestParam String password,@RequestParam String address,@RequestParam String city,@RequestParam("image") MultipartFile image,@RequestParam String gst,@RequestParam String adhar,@RequestParam String shopname)
	{
		ModelAndView md=new ModelAndView();
		StringBuilder sb=new StringBuilder();
		String filename=image.getOriginalFilename();
		Path fnameandpath=Paths.get(uploaddir,filename);
		try {
			Files.write(fnameandpath,image.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String path="img\\"+filename;
		sdao.insert(name,email,mobno,uname,password,address,city,path,gst,adhar,shopname);
		md.setViewName("sellerLanding");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/sellerlanding")
	public ModelAndView SellerLanding()
	{
		ModelAndView md=new ModelAndView();
		md.setViewName("sellerLanding");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/sellerprofile")
	public ModelAndView SellerProfile(HttpServletRequest request)
	{
		HttpSession session =request.getSession();
		ModelAndView md=new ModelAndView();
		Seller s=(Seller) session.getAttribute("seller");
		System.out.println(s.getSellerPic());
		md.addObject("seller", s);
		md.setViewName("profileSeller");
		return md;
	}
	@RequestMapping(method = RequestMethod.POST,path = "/sellersignin")
	public ModelAndView Signin(HttpServletRequest request,@RequestParam String uname,@RequestParam String password)
	{
		ModelAndView md= new ModelAndView();
		
		HttpSession session =request.getSession();
		
		Seller seller =sdao.findByusername(uname);
		
		
		System.out.println(session.getId());
		
		if (seller.getSellerUname().equals(uname) &&  seller.getSellerPassword().equals(password))
		{
			session.setAttribute("seller", seller);
			md.setViewName("redirect:/allproduct");
			return md;
		}
		else
		{
			md.addObject("error","Incorrect Log In");
			md.setViewName("Error");
			return md;
		}
	}
	@RequestMapping(method = RequestMethod.GET,path = "/sellersignout")
	public ModelAndView Sellersignout(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		HttpSession session =request.getSession();
		//Seller seller=(Seller) session.getAttribute("seller");
		session.invalidate();	
		md.setViewName("sellerLanding");
		return md;
	}

}

