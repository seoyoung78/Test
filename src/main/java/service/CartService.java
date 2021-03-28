package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CartDao;
import dto.Cart;

@Service
public class CartService {
	@Autowired
	private CartDao cartDao;
	
	public List<Cart> getReview() {
		List<Cart> list = cartDao.selectAll();
		return list;
	}
	
	public void saveReview(Cart cart) {
		cartDao.insert(cart);
	}

	/*public void updateReview(Cart cart) {
		cartDao.update(cart);
	}*/

	public void deleteReview(int pno, String uid) {
		cartDao.deleteCart(pno, uid);
	}
}
