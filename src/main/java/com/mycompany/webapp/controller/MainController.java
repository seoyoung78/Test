package com.mycompany.webapp.controller;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class MainController {
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private DataSource dataSource;
	
	@GetMapping("/main")
	public String openMain() {
		return "main";
	}

	@GetMapping("/category")
	public String openCategory() {
		return "main/category";
	}
	
	@GetMapping("/faq")
	public String openFaq() {
		return "main/faq";
	}
	@PostMapping("/qna")
	public String sendQna() {
		return "redirect:/main";
	}

	


}
