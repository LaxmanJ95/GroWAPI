package com.grocery.model.order;

import com.grocery.model.dbentity.OrderDetail;

public class OrderDetailSummary extends OrderDetail{

	long productId;
	String name;
	
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
