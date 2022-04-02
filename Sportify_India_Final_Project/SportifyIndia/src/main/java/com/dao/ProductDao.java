package com.dao;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Category;
import com.pojo.Product;
import com.pojo.ProductImage;
import com.pojo.Seller;
import com.repository.ProductRepositry;

@Service
public class ProductDao {
	
	@Autowired
	ProductRepositry prepo;
	
	
	public Product findone(int id)
	{
		Product p=prepo.findById(id).get();
		System.out.println(p.getProdName());
		return p;
	}
	public void insertOne(Product p)
	{
		prepo.save(p);
	}
	
	public List<Product> findall()
	{
		List<Product> plist=prepo.findAll();
		return plist;
	}
	public List<Product> getProductOfSeller(int id)
	{
		return prepo.getProductBySellerId(id);
	}
	public List<Product> getAllProduct()
	{
		List<Product> plist=prepo.findAll();
		return plist;
	}
	
	public List<Product> getProductDisc(int disc)
	{
		return prepo.getProductByDiscount(disc);
	}
	public List<Product> getProductByCategory(int id)
	{
		return prepo.getProductByCategory(id);
	}
	
	public List<Product> getProductByKeyword(String keyword)
	{
		return prepo.getProductByNamet(keyword);
	}
	public void deleteProduct(int id) {
		prepo.deleteById(id);
	}
	public void save(Product p)
	{
		prepo.save(p);
	}

}
