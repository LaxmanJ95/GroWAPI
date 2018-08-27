package com.grocery.model.order;

import com.grocery.model.dbentity.OrderDetail;

public class MyOrderDetail extends OrderDetail{
	String productName;

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}


	
}
