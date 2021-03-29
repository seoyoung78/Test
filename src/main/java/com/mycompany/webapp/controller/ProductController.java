package com.mycompany.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mycompany.webapp.dto.Reviews;
import com.mycompany.webapp.service.ReviewsService;

@Controller
public class ProductController {
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	@Autowired
	private ReviewsService reviewsService;
	
	@GetMapping("/product")
	public String openProduct(Model model) {
		List<Reviews> rlist = reviewsService.getReview();
		//logger.info(String.valueOf(rlist.size()));
		model.addAttribute("rlist", rlist);
				
		return "product/product";
	}
	
}
