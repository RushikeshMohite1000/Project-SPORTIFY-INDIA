package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.repository.CartRepositorty;

@Controller
public class CartController {
	
	@Autowired
	CartRepositorty cartrepo;
	

}
