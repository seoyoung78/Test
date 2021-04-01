package com.mycompany.webapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.OrderProducts;
import com.mycompany.webapp.dto.Orders;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.service.CartService;
import com.mycompany.webapp.service.OrderProductsService;
import com.mycompany.webapp.service.OrdersService;


@Controller
public class OrderController {
	private static final Logger logger =
			LoggerFactory.getLogger(OrderController.class);
	
	Cart[] cartArray = new Cart[10];
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private OrderProductsService orderProductsService;
	
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
		
		//logger.info(String.valueOf(clist.size()));
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
	public String openOrder(HttpServletRequest request, Model model) {
		String[] productNo = request.getParameterValues("productNo");
		String[] userId = request.getParameterValues("userId");
		String[] amount = request.getParameterValues("amount");
		String[] allPrice = request.getParameterValues("allPrice");
		String[] productName = request.getParameterValues("productName");
		String[] price = request.getParameterValues("price");
		String[] imgOname = request.getParameterValues("imgOname");
		String[] imgSname = request.getParameterValues("imgSname");
		String[] imgType = request.getParameterValues("imgType");
		for(int i =0; i < productName.length; i++) {
			cartArray[i] = new Cart();
//			logger.info(productName[i]);
//			logger.info(String.valueOf(productNo[i]));
			if(cartArray[i].getProductName() == null) {
				cartArray[i].setProductNo(Integer.parseInt(productNo[i]));
				cartArray[i].setUserId(userId[i]);
				cartArray[i].setAmount(Integer.parseInt(amount[i]));
				cartArray[i].setAllPrice(Integer.parseInt(allPrice[i]));
				cartArray[i].setProductName(productName[i]);
				cartArray[i].setPrice(Integer.parseInt(price[i]));
				cartArray[i].setImgOname(imgOname[i]);
				cartArray[i].setImgSname(imgSname[i]);
				cartArray[i].setImgType(imgType[i]);
				
			}
			//logger.info(String.valueOf(cartArray[i].getProductNo()));
//			logger.info(cartArray[i].getUserId());
//			logger.info(String.valueOf(cartArray[i].getAmount()));
//			logger.info(String.valueOf(cartArray[i].getAllPrice()));
//			logger.info(cartArray[i].getProductName());
//			logger.info(String.valueOf(cartArray[i].getProductNo()));
//			logger.info(cartArray[i].getImgOname());
//			logger.info(cartArray[i].getImgSname());
//			logger.info(cartArray[i].getImgType());			
		}
		
		String sum = request.getParameter("sum");
		String count = request.getParameter("count");
//		logger.info(sum);
//		logger.info(count);
		model.addAttribute("sum", Integer.parseInt(sum));
		model.addAttribute("count", Integer.parseInt(count));
		
		return "order/order";
	}
	
	@PostMapping("/ordercomplete")
	public String openOrdercomplete(HttpServletRequest request) {
		Orders orders = new Orders();
		String allPrice = request.getParameter("allPrice");
		String zipCode = request.getParameter("zipCode");
		
		orders.setUserId(cartArray[0].getUserId());	
		orders.setAllPrice(Integer.parseInt(allPrice));
		orders.setZipCode(Integer.parseInt(zipCode));
		orders.setRoadAddress(request.getParameter("roadAddress"));
		orders.setDetailAddress(request.getParameter("detailAddress"));
		
//		logger.info(orders.getUserId());
//		logger.info(orders.getRoadAddress());
//		logger.info(orders.getDetailAddress());
		ordersService.saveOrder(orders);
		
		OrderProducts orderProducts = new OrderProducts();
		
		for(int i = 0; i < 4; i++) {
			if(cartArray[i].getProductName() == null) {
				break;
			}
			else{
				//logger.info(String.valueOf(cartArray[i].getProductNo()));
				orderProducts.setProductNo(cartArray[i].getProductNo());
				orderProducts.setUserId(cartArray[i].getUserId());
				orderProducts.setAmount(cartArray[i].getAmount());
				orderProducts.setPrice(cartArray[i].getAllPrice());
//				
//				logger.info(String.valueOf(orderProducts.getProductNo()));
//				logger.info(orderProducts.getUserId());
				
				orderProductsService.saveOrderProduct(orderProducts);
				cartService.deleteCart(orderProducts.getProductNo(), orderProducts.getUserId());
			} 
		}		
		//cartArray.fill();
		//cartArray = 0;
		
		cartArray = new Cart[10];
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
