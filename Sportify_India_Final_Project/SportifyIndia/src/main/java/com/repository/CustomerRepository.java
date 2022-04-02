package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pojo.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	 public Customer findByCustUname(String custUname);
}
