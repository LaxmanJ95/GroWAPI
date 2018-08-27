package com.grocery.model.order;

public class OrderCalculation {

	int totalItems;
	double tax;
	double price;
	double totalPrice;
	double shippingRate;
	
	public int getTotalItems() {
		return totalItems;
	}
	public void setTotalItems(int totalItems) {
		this.totalItems = totalItems;
	}
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public double getShippingRate() {
		return shippingRate;
	}
	public void setShippingRate(double shippingRate) {
		this.shippingRate = shippingRate;
	}
	
}
