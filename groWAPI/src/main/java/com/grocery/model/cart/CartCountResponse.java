package com.grocery.model.cart;

import com.grocery.clib.model.BaseResponse;

public class CartCountResponse extends BaseResponse{ 
	CartTotal cartTotal;

	public CartTotal getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(CartTotal cartTotal) {
		this.cartTotal = cartTotal;
	}
	
}
