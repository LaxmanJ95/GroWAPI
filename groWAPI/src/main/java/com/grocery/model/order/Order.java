package com.grocery.model.order;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;
import com.grocery.model.dbentity.User;

public class Order extends OrderMaster{
	OrderDetail[] orderDetail;
	Address shippingAddress;
	User user;
	
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
