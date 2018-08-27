package com.grocery.model.order;

import java.util.ArrayList;
import java.util.List;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderMaster;

public class MyOrder extends OrderMaster{
	int rowNumber;
	String status;
	Address shippingAddress;
	Address billingAddress;
	List<MyOrderDetail> orderDetail;
	String userName;
	String profileImageUrl;
	Double balance;
	Double finalPrice;
	double discountPercent;
	
	
	public int getRowNumber() {
		return rowNumber;
	}
	public void setRowNumber(int rowNumber) {
		this.rowNumber = rowNumber;
	}
	public void setFinalPrice(Double finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Address getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(Address shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public Address getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(Address billingAddress) {
		this.billingAddress = billingAddress;
	}
	public List<MyOrderDetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(List<MyOrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
		//List<String> str = new ArrayList<String>();
	}
	public String getProfileImageUrl() {
		return profileImageUrl;
	}
	public void setProfileImageUrl(String profileImageUrl) {
		this.profileImageUrl = profileImageUrl;
	}
	public double getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(double finalPrice) {
		this.finalPrice = finalPrice;
	}
	public double getDiscountPercent() {
		return discountPercent;
	}
	public void setDiscountPercent(double discountPercent) {
		this.discountPercent = discountPercent;
	}

	
	

	
}
