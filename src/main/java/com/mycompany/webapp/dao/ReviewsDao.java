package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Reviews;

@Mapper
public interface ReviewsDao {
	public List<Reviews> selectAll();
	public Reviews selectReview(int review_no);
	public List<Reviews> selectByPage(Pager pager);
	public int insert(Reviews review);
	public int deleteReview(int review_no);
	public int count();	
}
