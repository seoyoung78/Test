package com.mycompany.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.service.CartService;


@Controller
public class OrderController {
	private static final Logger logger =
			LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	private CartService cartService;
	
	@GetMapping("/cart")
	public String openCart(String pageNo, Model model, HttpSession session) {
		int intPageNo = 1;
		if (pageNo == null) {
			Pager pager = (Pager)session.getAttribute("pager");
			if (pager != null) {
				intPageNo = pager.getPageNo();
			}
		} else {
			intPageNo = Integer.parseInt(pageNo);
		}
		int totalRows = cartService.getTotalRows();
		Pager pager = new Pager(6, 5, totalRows, intPageNo);
		session.setAttribute("pager", pager);
		
		List<Cart> clist = cartService.getCart();
		logger.info(String.valueOf(clist.size()));
		model.addAttribute("clist",clist);
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
