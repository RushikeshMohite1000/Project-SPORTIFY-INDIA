package com.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Customer;
import com.repository.CustomerRepository;

@Service
public class CustomerDao {
	
		@Autowired
		CustomerRepository repo;
		
		public void insert(String name,String email,String mobno,String uname,String password,String address,String pincode,String city)
		{
			Customer customer=new Customer(name,email,mobno,uname,password,address,pincode,city);
			repo.save(customer);
		}
}
