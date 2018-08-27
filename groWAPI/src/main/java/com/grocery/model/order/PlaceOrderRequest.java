package com.grocery.model.order;

import com.grocery.clib.model.BaseRequest;

public class PlaceOrderRequest extends BaseRequest {
	int userId;
	long billingAddressId;
	long shippingAddressId;
	
	String paymentMethod;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public long getBillingAddressId() {
		return billingAddressId;
	}
	public void setBillingAddressId(long billingAddressId) {
		this.billingAddressId = billingAddressId;
	}
	public long getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(long shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	
	

}
