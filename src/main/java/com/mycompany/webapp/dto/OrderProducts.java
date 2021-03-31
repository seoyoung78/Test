package com.mycompany.webapp.dto;

public class OrderProducts {

	// 주문관련
	private int orderNo; // 주문번호 (PF)
	private int productNo; // 상품번호 (PF)
	private String user_id; // 회원번호 (F)
	private int amount;
	private int price;
	private int reviewState;
	
	//임시 저장
	private int[] tempProductNo;
	private int[] tempAmount;
	private int[] tempPrice;
	private int[] tempReviewState;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getReviewState() {
		return reviewState;
	}
	public void setReviewState(int reviewState) {
		this.reviewState = reviewState;
	}
	public int[] getTempProductNo() {
		return tempProductNo;
	}
	public void setTempProductNo(int[] tempProductNo) {
		this.tempProductNo = tempProductNo;
	}
	public int[] getTempAmount() {
		return tempAmount;
	}
	public void setTempAmount(int[] tempAmount) {
		this.tempAmount = tempAmount;
	}
	public int[] getTempPrice() {
		return tempPrice;
	}
	public void setTempPrice(int[] tempPrice) {
		this.tempPrice = tempPrice;
	}
	public int[] getTempReviewState() {
		return tempReviewState;
	}
	public void setTempReviewState(int[] tempReviewState) {
		this.tempReviewState = tempReviewState;
	}
}
