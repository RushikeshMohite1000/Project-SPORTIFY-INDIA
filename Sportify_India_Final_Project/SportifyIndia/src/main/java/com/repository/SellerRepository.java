package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.pojo.Seller;


@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer>{
	public Seller findBySellerUname(String custUname);
	
}
