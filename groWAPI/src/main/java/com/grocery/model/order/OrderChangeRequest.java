package com.grocery.model.order;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;

public class OrderChangeRequest {

	Order order;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

}
