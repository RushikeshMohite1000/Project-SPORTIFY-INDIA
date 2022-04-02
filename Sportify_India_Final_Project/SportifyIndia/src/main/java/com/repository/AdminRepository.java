package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.pojo.Admin;


@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> 
{

	public Admin findByAdminUname(String adminUname);
	
	

}
