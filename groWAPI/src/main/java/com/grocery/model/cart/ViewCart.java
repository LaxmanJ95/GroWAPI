package com.grocery.model.cart;

import com.grocery.model.dbentity.Cart;

public class ViewCart extends Cart {
	String productName;
	String productImageFile;
	int saved;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImageFile() {
		return productImageFile;
	}
	public void setProductImageFile(String productImageFile) {
		this.productImageFile = productImageFile;
	}
	public int getSaved() {
		return saved;
	}
	public void setSaved(int saved) {
		this.saved = saved;
	}
	
}
