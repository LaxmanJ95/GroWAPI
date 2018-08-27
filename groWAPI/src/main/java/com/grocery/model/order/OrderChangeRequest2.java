package com.grocery.model.order;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;

public class OrderChangeRequest2 {
	
	OrderMaster orderMaster;
	OrderDetail[] orderDetail;
	Address shippingAddress;
	
	public OrderMaster getOrderMaster() {
		return orderMaster;
	}
	public void setOrderMaster(OrderMaster orderMaster) {
		this.orderMaster = orderMaster;
	}
	public OrderDetail[] getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(OrderDetail[] orderDetail) {
		this.orderDetail = orderDetail;
	}
	public Address getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(Address shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	
	
}
