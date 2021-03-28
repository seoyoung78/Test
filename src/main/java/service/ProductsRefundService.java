package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ProductsRefundDao;
import dto.ProductsRefund;

@Service
public class ProductsRefundService {
	@Autowired
	private ProductsRefundDao refundDao;
	
	public List<ProductsRefund> getRefund() {
		List<ProductsRefund> list = refundDao.selectAll();
		return list;
	}
	
	public void saveReview(ProductsRefund refund) {
		refundDao.insert(refund);
	}

	/*public void updateRefund(ProductsRefund refund) {
		refundDao.update(refund);
	}*/

	public void deleteReview(int ono) {
		refundDao.deleteRefund(ono);
	}
}
