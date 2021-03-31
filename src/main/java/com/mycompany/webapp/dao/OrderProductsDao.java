package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.OrderProducts;

@Mapper
public interface OrderProductsDao {

	public void createOrderproduct(int orderNo, int productNo) throws Exception;
	public List<OrderProducts> readOrderproduct(int orderNo, int productNo) throws Exception;
	public void updateOrderproduct(int orderNo, int productNo) throws Exception;
//	public void deleteOrderproduct(int orderNo, int productNo) throws Exception;	
//	public void updateReview(int orderNo, int productNo) throws Exception;
	
	
}
