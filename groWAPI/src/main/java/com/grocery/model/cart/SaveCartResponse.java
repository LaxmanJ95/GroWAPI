package com.grocery.model.cart;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.grocery.clib.model.BaseResponse;

public class SaveCartResponse extends BaseResponse{

	CartTotal cartTotal;

	public CartTotal getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(CartTotal cartTotal) {
		this.cartTotal = cartTotal;
	}
	
}
