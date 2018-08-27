package com.grocery.model.cart;

import com.grocery.clib.model.BaseRequest;

public class UpdateQuantityRequest extends BaseRequest{
	long cartId;
	int quantity;
	public long getCartId() {
		return cartId;
	}
	public void setCartId(long cartId) {
		this.cartId = cartId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
}
