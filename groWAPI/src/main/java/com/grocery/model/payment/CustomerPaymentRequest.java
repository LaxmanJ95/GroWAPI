package com.grocery.model.payment;

import java.util.Date;

import com.grocery.model.dbentity.CustomerPayment;

public class CustomerPaymentRequest {


	int userId;
	long orderId;
	double payment;
	Date orderDate;
	String paymentMethod;
	String paymentAgent;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public long getOrderId() {
		return orderId;
	}
	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getPaymentAgent() {
		return paymentAgent;
	}
	public void setPaymentAgent(String paymentAgent) {
		this.paymentAgent = paymentAgent;
	}
	
	
}
