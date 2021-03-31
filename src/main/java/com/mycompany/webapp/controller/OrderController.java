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
import com.mycompany.webapp.service.ProductsService;


@Controller
public class OrderController {
	private static final Logger logger =
			LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductsService productsService;
	
	/*@GetMapping("/cart")
	public String openCart(Model model) {
		List<Cart> clist = cartService.getCart();
		logger.info(String.valueOf(clist.size()));
		model.addAttribute("clist",clist);
		return "order/cart";
	}*/
	
	//@RequestMapping(value="/cart", method = {RequestMethod.GET, RequestMethod.POST})
	@GetMapping("/cart")
	public String openCart(String pageNo, Model model, HttpSession session) {
		Cart cart = new Cart();
		cart.setUserId("a1@gmail.com");
		String userId = cart.getUserId();
		
		int intPageNo = 1;
		if(pageNo == null ) {
			Pager pager = (Pager)session.getAttribute("pager");
			if (pager != null) {
				intPageNo = pager.getPageNo();
			}
		} else {
			intPageNo = Integer.parseInt(pageNo);
		}
				
		int totalRows = cartService.getTotalRows(userId);
		Pager pager = new Pager(5, 5, totalRows, intPageNo);
		session.setAttribute("pager", pager);		
		
		List<Cart> clist = cartService.getCart(pager, userId);
		
		logger.info(String.valueOf(clist.size()));
		//logger.info(clist.getIndex(1).getIndex);
		model.addAttribute("clist",clist);
		model.addAttribute("pager", pager);	
		
		return "order/cart";
	}
	
	//선택옵션 정보
	@PostMapping("/addcart")
	public String addCart() {
		return "redirect:/product";
	}
	
	@GetMapping("/delcart")
	public String delCart(int productNo) {
		logger.info("실행");
		int pno = productNo;
		String userID = "a1@gmail.com";
		
		/*Cart cart = new Cart();
		cart.setUserId("a1@gmail.com");
		cart.setProductNo(productNo);
		cart.setAmount(2);
		cart.setAllprice(20000);
		cart.setRegdate(new Date());
		cart.setProductName("샘플1");
		cart.setPrice(10000);
		cart.setImgOname("26.jpg");
		cart.setImgSname("132546-1231");
		cart.setImgType("image");*/
		
		logger.info(String.valueOf(productNo));
		
		cartService.deleteCart(pno, userID);
		
		return "redirect:/cart";
	}
	
	@PostMapping("/updateamount")
	public String updateAmount(Cart cart) {
		//Products product = productsService.getProduct(cart.getProductNo());
		int allprice = cart.getAmount() * cart.getPrice();
		cart.setAllPrice(allprice);
		cartService.updateAmount(cart);
		return "redirect:/cart";
	}
	
	@PostMapping("/order")
	public String openOrder(Cart cart) {
		logger.info(String.valueOf(cart.getProductNo()));
		logger.info(cart.getProductName());
		logger.info(String.valueOf(cart.getAmount()));
		/*	Cart[] cartArray = new Cart[10];
			
			for(int i = 0; i < cartArray.length; i++) {
				if(cartArray[i] == null) {
					cartArray[i].setProductNo(cart.getProductNo());
					cartArray[i].setUserId(cart.getUserId());
					cartArray[i].setAmount(cart.getAmount());
					cartArray[i].setProductName(cart.getProductName());
					cartArray[i].setPrice(cart.getPrice());
					cartArray[i].setImgOname(cart.getImgOname());
					cartArray[i].setImgSname(cart.getImgSname());
					cartArray[i].setImgType(cart.getImgType());
					logger.info(String.valueOf(cartArray[i].getProductNo()));
					break;
				}
			}*/
		
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
