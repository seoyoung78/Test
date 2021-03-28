package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import dto.Pager;
import dto.Reviews;

@Mapper
public interface ReviewsDao {
	public List<Reviews> selectAll();
	public List<Reviews> selectByPage(Pager pager);
	public Reviews selectReview(int review_no);
	public int insert(Reviews review);
	//public int update(Reviews review);
	public int deleteReview(int review_no);
	public int count();	
}
