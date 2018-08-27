package com.grocery.model.payment;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.order.OrderResponse;

public class TranscationSuccessResponse extends BaseResponse{

	TranscationSuccess transcation;
	OrderResponse orderResponse;
	String accountNo;
	
	public TranscationSuccess getTranscation() {
		return transcation;
	}

	public void setTranscation(TranscationSuccess transcation) {
		this.transcation = transcation;
	}

	public OrderResponse getOrderResponse() {
		return orderResponse;
	}

	public void setOrderResponse(OrderResponse orderResponse) {
		this.orderResponse = orderResponse;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	
	
}
