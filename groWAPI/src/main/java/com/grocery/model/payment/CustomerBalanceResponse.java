package com.grocery.model.payment;

import com.grocery.clib.model.BaseResponse;

public class CustomerBalanceResponse extends BaseResponse {
	
	Double paymentDue;

	public Double getPaymentDue() {
		return paymentDue;
	}

	public void setPaymentDue(Double paymentDue) {
		this.paymentDue = paymentDue;
	}
	

}
