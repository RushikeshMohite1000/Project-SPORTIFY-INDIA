package com.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pojo.Seller;
import com.repository.SellerRepository;
@Service
public class SellerDao {
	@Autowired
	SellerRepository repo;
	
	public void insert(String name,String email,String mobno,String uname,String password,String address,String city,String pic,String gstno,String adharno,String shopname)
	{
		Seller seller=new Seller(name,email,mobno,uname,password,address,city,pic,gstno,adharno,shopname);
		repo.save(seller);
	}
	public Seller FindOne(int id)
	{
		Seller s=repo.findById(id).get();
		return s;
	}
	public Seller findByusername(String uname) {
		
		Seller sell = repo.findBySellerUname(uname);
		return sell;
	}
	public List<Seller> FindAll()
	{
		List<Seller> list = repo.findAll();
		
		return list;
	}
}
