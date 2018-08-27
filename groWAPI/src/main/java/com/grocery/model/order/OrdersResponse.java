package com.grocery.model.order;

import java.util.List;

import com.grocery.clib.model.BaseResponse;

public class OrdersResponse extends BaseResponse{
	List<MyOrder> orders;
	List<OrderFilterByProduct> orderFilterProduct;
	int count;

	public List<MyOrder> getOrders() {
		return orders;
	}

	public void setOrders(List<MyOrder> orders) {
		this.orders = orders;
	}

	public List<OrderFilterByProduct> getOrderFilterProduct() {
		return orderFilterProduct;
	}

	public void setOrderFilterProduct(List<OrderFilterByProduct> orderFilterProduct) {
		this.orderFilterProduct = orderFilterProduct;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	

	
	
}
