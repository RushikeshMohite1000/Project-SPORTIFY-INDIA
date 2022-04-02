package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Admin;
import com.repository.AdminRepository;

@Service
public class AdminDao 
{

	@Autowired
	AdminRepository repo;
	
	
	public Admin findByusername(String uname)
	{
	
		Admin ad =repo.findByAdminUname(uname);
		return ad;
	}
	
	
	
	
	
}
