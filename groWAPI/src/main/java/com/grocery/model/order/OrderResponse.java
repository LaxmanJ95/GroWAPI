package com.grocery.model.order;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.User;

public class OrderResponse extends BaseResponse{
	MyOrder order;

	public MyOrder getOrder() {
		return order;
	}

	public void setOrder(MyOrder order) {
		this.order = order;
	}

	
	
}
