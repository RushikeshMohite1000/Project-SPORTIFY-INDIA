package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Category;
import com.repository.CategoryRepository;

@Service
public class Categorydao {
	@Autowired
	CategoryRepository catrepo;
	
	
	public List<Category> findall()
	{
		return catrepo.findAll();
	}
	public Category findone(int id)
	{
		return catrepo.findById(id).get();
	}

}
