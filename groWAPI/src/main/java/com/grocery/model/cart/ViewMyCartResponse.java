package com.grocery.model.cart;

import java.util.List;

import com.grocery.clib.model.BaseResponse;

public class ViewMyCartResponse extends BaseResponse{
	List<ViewCart> cart;
	CartTotal cartTotal;
	


	public List<ViewCart> getCart() {
		return cart;
	}

	public void setCart(List<ViewCart> cart) {
		this.cart = cart;
	}

	public CartTotal getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(CartTotal cartTotal) {
		this.cartTotal = cartTotal;
	}
	
	
}
