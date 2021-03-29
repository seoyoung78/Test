package com.mycompany.webapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ReviewsDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Reviews;

@Service
public class ReviewsService {
	@Autowired
	private ReviewsDao reviewsDao;
	
	public List<Reviews> getReview() {
		List<Reviews> list = reviewsDao.selectAll();
		return list;
	}

	public Reviews getReview (int rno) {
		Reviews review = reviewsDao.selectReview(rno);
		return review;
	}
	
	public List<Reviews> getReview(Pager pager) {
		List<Reviews> list = reviewsDao.selectByPage(pager);
		return list;
	}
	
	public void saveReview(Reviews review) {
		reviewsDao.insert(review);
	}

	public void deleteReview(int rno) {
		reviewsDao.deleteReview(rno);
	}
	
	public int getTotalRows() {
		int rows = reviewsDao.count();
		return rows;
	}
}
