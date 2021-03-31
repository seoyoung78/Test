package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Orders;

@Mapper
public interface OrdersDao {

	public void createOrder(String userId, int orderNo) throws Exception;
	public List<Orders> readOrder(int orderNo) throws Exception;
	public void updateOrder(int orderNo) throws Exception;
	public void deleteOrder(int orderNo) throws Exception;
	
}
