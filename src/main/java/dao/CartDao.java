package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import dto.Cart;

@Mapper
public interface CartDao {
	public List<Cart> selectAll();
	public int insert(Cart cart);
	//public int update(Cart cart);
	public int deleteCart(int product_no, String user_id);
}
