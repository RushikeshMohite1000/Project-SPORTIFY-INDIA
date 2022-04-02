package com.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CartItemDao;
import com.dao.Categorydao;
import com.dao.OrderDao;
import com.dao.ProductDao;
import com.pojo.Cart;
import com.pojo.CartItem;
import com.pojo.Category;
import com.pojo.Order;
import com.pojo.Product;
import com.pojo.ProductImage;
import com.pojo.Seller;

@Controller
public class ProductController {
	
	public static String uploaddir="C:\\Users\\Rushikesh\\Desktop\\SportfyIndiaSpringBoot\\SportifyIndia\\src\\main\\resources\\static\\img";
	@Autowired
	ProductDao pdao;
	@Autowired
	CartItemDao itemdao;
	@Autowired
	Categorydao catdao;
	@Autowired
	OrderDao od;
	
	@RequestMapping(method = RequestMethod.GET,path = "/add")
	public ModelAndView Addproduct()
	{
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.setViewName("Addproduct");
		return md;
	}
	@RequestMapping(method = RequestMethod.POST,path = "/addproduct")
	public ModelAndView Addoneproduct(HttpServletRequest request,@RequestParam String name,@RequestParam String desc,@RequestParam String disc,@RequestParam int quantity,@RequestParam int price,@RequestParam int category,@RequestParam("image1") MultipartFile image1,@RequestParam("image2") MultipartFile image2)
	{
		ModelAndView md=new ModelAndView();
		StringBuilder sb=new StringBuilder();
		String filename1=image1.getOriginalFilename();
		String filename2=image2.getOriginalFilename();
		Path fnameandpath1=Paths.get(uploaddir,filename1);
		Path fnameandpath2=Paths.get(uploaddir,filename2);
		try {
			Files.write(fnameandpath1,image1.getBytes());
			Files.write(fnameandpath2,image2.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String path1="img\\"+filename1;
		String path2="img\\"+filename2;
		HttpSession session=request.getSession();
		Seller s=(Seller) session.getAttribute("seller");
		Category cat=catdao.findone(category);
		List<ProductImage> images=new ArrayList<>();
		int discount=Integer.parseInt(disc);
		Product p=new Product(s,cat, name, desc, quantity, price, discount, null);
		images.add(new ProductImage(path1,p));
		images.add(new ProductImage(path2,p));
		p.setProductImages(images);
		p.setOrders(null);
		p.setCartItems(null);
		pdao.insertOne(p);
		md.setViewName("redirect:/allproduct");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/index")
	public ModelAndView Trending()
	{
		ModelAndView md=new ModelAndView();
		List<Product> plist=pdao.findall();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("products", plist);
		//System.out.println(plist.get(0).getProductImages().get(1).getProdImageImage());
		md.setViewName("index");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/allproduct")
	public ModelAndView Allproduct(HttpServletRequest request)
	{
		ModelAndView md=new ModelAndView();
		HttpSession session=request.getSession();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		Seller s=(Seller) session.getAttribute("seller");
		List<Product> plist= pdao.getProductOfSeller(s.getSellerId());
		md.addObject("products", plist);
		md.setViewName("AllProducts");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/productupdate")
	@ResponseBody
	public ModelAndView Updategetproduct(@RequestParam int id)
	{
		ModelAndView md=new ModelAndView();
		Product product=pdao.findone(id);
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("product", product);
		md.setViewName("Updateproduct");
		return md;
	}
	
	@RequestMapping(method = RequestMethod.POST,path = "/updateproduct")
	public ModelAndView Updateproduct(@RequestParam int id,@RequestParam String name,@RequestParam String desc,@RequestParam String disc,@RequestParam int quantity,@RequestParam int price)
	{
		ModelAndView md=new ModelAndView();
		Product product=pdao.findone(id);
		int discount=Integer.parseInt(disc);
		product.setProdName(name);
		product.setProdDesc(desc);
		product.setProdDiscount(discount);
		product.setProdPrice(price);
		product.setProdQuantity(quantity);
		pdao.insertOne(product);
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		md.addObject("product", product);
		md.setViewName("redirect:/allproduct");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/productdelete")
	@ResponseBody
	public ModelAndView Deleteproduct(@RequestParam int id)
	{
		ModelAndView md=new ModelAndView();
		Product p=pdao.findone(id);
		try
		{
		itemdao.upforpro(id);
		p.setCartItems(null);
		pdao.save(p);
		od.deleteproOrder(id);
		pdao.deleteProduct(id);
		md.setViewName("redirect:/allproduct");
		return md;
		}
		catch(Exception e){
			md.addObject("error", "something wrong happend");
			md.setViewName("Error");
			return  md;
		}
	}
	@RequestMapping(method = RequestMethod.GET,path = "/procategory")
	public ModelAndView getProductByCategory(@RequestParam int id) {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		List<Product> list = pdao.getProductByCategory(id);
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("shopByCategory");
		return md;
	}
	
	@RequestMapping(method = RequestMethod.GET,path = "/shopCricketItem")
	public ModelAndView getProductByCategory1() {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		List<Product> list = pdao.getProductByCategory(1);
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("CricketItem2");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/getallproducts")
	public ModelAndView getAllProduct() {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		List<Product> list = pdao.getAllProduct();
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("shop123");
		return md;
	}

	@RequestMapping(method = RequestMethod.GET,path = "/getprodbykeyword")
	@ResponseBody
	public ModelAndView getProductByKeyword(@RequestParam String keyword) {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		System.out.println(keyword);

		List<Product> list = pdao.getProductByKeyword(keyword);
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("shopByName2");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/getproddisc30")
	public ModelAndView getProductDisc() {
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		List<Product> list = pdao.getProductDisc(30);
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("shopByDisc");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/getproddisc40")
	public ModelAndView getProductDisc4() {
		ModelAndView md=new ModelAndView();
		List<Product> list = pdao.getProductDisc(40);
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		list.forEach(e->{System.out.println(e.getProdName());});
		md.addObject("products", list);
		md.setViewName("shopByDisc");
		return md;
	}
	@RequestMapping(method = RequestMethod.GET,path = "/prodetails")
	public ModelAndView Detailproduct(@RequestParam int id)
	{
		ModelAndView md=new ModelAndView();
		List<Category> clist=catdao.findall();
		md.addObject("category",clist);
		Product p=pdao.findone(id);
		md.addObject("product",p);
		md.setViewName("details2");
		return md;
	}

}
