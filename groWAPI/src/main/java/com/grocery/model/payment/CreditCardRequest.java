package com.grocery.model.payment;

import com.grocery.model.order.PlaceOrderRequest;

public class CreditCardRequest {

	MakePayment makePayment;
	PlaceOrderRequest placeOrder;

	public MakePayment getMakePayment() {
		return makePayment;
	}

	public void setMakePayment(MakePayment makePayment) {
		this.makePayment = makePayment;
	}

	public PlaceOrderRequest getPlaceOrder() {
		return placeOrder;
	}

	public void setPlaceOrder(PlaceOrderRequest placeOrder) {
		this.placeOrder = placeOrder;
	}
	
	
}
