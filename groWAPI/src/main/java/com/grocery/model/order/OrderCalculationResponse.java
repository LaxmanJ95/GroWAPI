package com.grocery.model.order;

import com.grocery.clib.model.BaseResponse;

public class OrderCalculationResponse extends BaseResponse{

	OrderCalculation orderCalculation;

	public OrderCalculation getOrderCalculation() {
		return orderCalculation;
	}

	public void setOrderCalculation(OrderCalculation orderCalculation) {
		this.orderCalculation = orderCalculation;
	}
	
	
	
	
}
