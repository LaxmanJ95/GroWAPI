package com.grocery.model.dbentity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class WishList {


	@Id
	@GeneratedValue
	int id;
	long productId;
	Double price;
	int quantity;
	long userId;
	@Transient
	String uploadedFiles;
	int presOrder;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getUploadedFiles() {
		return uploadedFiles;
	}
	public void setUploadedFiles(String uploadedFiles) {
		this.uploadedFiles = uploadedFiles;
	}
	public int getPresOrder() {
		return presOrder;
	}
	public void setPresOrder(int presOrder) {
		this.presOrder = presOrder;
	}
		
}
