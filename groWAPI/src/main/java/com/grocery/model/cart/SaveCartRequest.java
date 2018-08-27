package com.grocery.model.cart;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.grocery.clib.model.BaseRequest;
import com.grocery.model.dbentity.Cart;

public class SaveCartRequest extends BaseRequest {
	List<Cart> cart;

	public List<Cart> getCart() {
		return cart;
	}

	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}
	
	public static void main(String s[])throws Exception{
		ObjectMapper mapper = new ObjectMapper();
		SaveCartRequest req= new SaveCartRequest();
		Cart c= new Cart();
		c.setId(new Long(100));
		List<Cart> al = new ArrayList();
		al.add(c);
		req.setCart(al);
		System.out.println(mapper.writeValueAsString(req));
	}
}
