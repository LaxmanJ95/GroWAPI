package com.grocery.model.payment;

import java.util.List;

import com.grocery.clib.model.BaseResponse;

public class PaymentInfoResponse extends BaseResponse{

	List<PaymentInfoDetails> payments;

	public List<PaymentInfoDetails> getPayments() {
		return payments;
	}

	public void setPayments(List<PaymentInfoDetails> payments) {
		this.payments = payments;
	}
	
	
}
