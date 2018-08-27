package com.grocery.model.order;

public class OrderCalculationRequest {

	int userId;
	String city;
	int shippingNeed;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getShippingNeed() {
		return shippingNeed;
	}
	public void setShippingNeed(int shippingNeed) {
		this.shippingNeed = shippingNeed;
	}
	
	
}
