package com.mycompany.webapp.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.controller.OrderController;
import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.Pager;

@Service
public class CartService {
	private static final Logger logger =
			LoggerFactory.getLogger(CartService.class);
	
	@Autowired
	private CartDao cartDao;
	
	public List<Cart> getCart() {
		List<Cart> list = cartDao.selectAll();
		return list;
	}
	
	public List<Cart> getCart(Pager pager) {
		List<Cart> list = cartDao.selectByPage(pager);
		return list;
	}
	
	public void saveCart(Cart cart) {
		cartDao.insert(cart);
	}

	public void deleteCart(int productNo, String userId) {
		cartDao.deleteCart(productNo, userId);
		//logger.info(String.valueOf(result));
	}

	public int getTotalRows() {
		int rows = cartDao.count();
		return rows;
	}

	public void updateAmount(Cart cart) {
		cartDao.update(cart);
	}
}
