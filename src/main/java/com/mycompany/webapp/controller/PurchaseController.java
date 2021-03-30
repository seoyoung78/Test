package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.Reviews;
import com.mycompany.webapp.service.ReviewsService;

@Controller
public class PurchaseController {
	private static final Logger logger =
			LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	private ReviewsService reviewsService;
	
	@GetMapping("/purchaselist")
	public String openPurchaseList() {
		return "purchase/purchaseList";
	}
	
	@GetMapping("/exchangerefund")
	public String openExchangeRefund() {
		return "purchase/exchangeRefund";
	}
	
	@PostMapping("/exchangerefund")
	public String ExchangeRefund() {
		return "redirect:/purchaselist";
	}
	
	@GetMapping("/review")
	public String openReview() {
		Reviews review = new Reviews();
		review.setOrderNo(3);
		review.setProductName("트리");
		review.setUserId("a1@gmail.com");
		logger.info(review.getProductName());
		logger.info(review.getUserId());
		return "purchase/review";
	}
	
	@RequestMapping(value="/createreview", method = {RequestMethod.GET, RequestMethod.POST})
	public void updateReview(Reviews review) {
		reviewsService.saveReview(review);
	}
	
	@PostMapping("/delreview")
	public String delReview(int rno) {
		reviewsService.deleteReview(rno);
		return "redirect:/product";
	}

}
