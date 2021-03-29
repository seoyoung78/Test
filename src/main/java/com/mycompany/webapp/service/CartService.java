package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.Pager;

@Service
public class CartService {
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

	public void deleteCart(Cart cart) {
		cartDao.deleteCart(cart);
	}

	public int getTotalRows() {
		int rows = cartDao.count();
		return 0;
	}
}