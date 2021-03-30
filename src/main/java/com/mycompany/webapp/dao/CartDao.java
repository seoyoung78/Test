package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.Cart;
import com.mycompany.webapp.dto.Pager;

@Mapper
public interface CartDao {
	public List<Cart> selectAll();
	public List<Cart> selectByPage(Pager pager);
	public int insert(Cart cart);
	public int deleteCart(int productNo, String userId);
	public int count();
	public void update(Cart cart);	
}
