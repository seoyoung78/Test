package com.mycompany.webapp.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.OrdersDao;
import com.mycompany.webapp.dto.Orders;

@Service
public class OrdersService {
	private static final Logger logger =
			LoggerFactory.getLogger(OrdersService.class);
	
	@Autowired
	private OrdersDao ordersDao;

	public void saveOrder(Orders orders) {
		ordersDao.insert(orders);
	}

}
