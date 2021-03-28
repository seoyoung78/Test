package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;


@Controller
public class OrderController {
	private static final Logger logger =
			LoggerFactory.getLogger(OrderController.class);
	
	@GetMapping("/cart")
	public String openCart() {
		return "order/cart";
	}
	
	//선택옵션 정보
	@PostMapping("/addcart")
	public String addCart() {
		return "redirect:/product";
	}
	
	@PostMapping("/delcart")
	public String delCart() {
		return "redirect:/cart";
	}
	
	@GetMapping("/order")
	public String openOrder() {
		return "order/order";
	}
	
	@PostMapping("/ordercomplete")
	public String openOrdercomplete() {
		return "order/ordercomplete";
	}
	
	@GetMapping("/wishlist")
	public String openWishlist() {
		return "order/wishlist";
	}
	
	@PostMapping("/addwishlist")
	public String addWishList() {
		return "redirect:/product";
	}
	
	@PostMapping("/delwishlist")
	public String delWishList() {
		return "redirect:/wishlist";
	}


}
