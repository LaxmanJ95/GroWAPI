package com.grocery.model.dbentity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Product {

		@Id
		@GeneratedValue
	    Long id;
		
		String name;
		String description;
		String imageFile;
		int originalQuantity;
		Double specialPrice;
		String costPrice;
		String productClass;
		String subClass;
		String packing;
		String code;
		int quantity=1;
		int userId;
		int active;
		int inInventory;
		int taxable;
		String productExpiry;
		
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getImageFile() {
			return imageFile;
		}
		public void setImageFile(String imageFile) {
			this.imageFile = imageFile;
		}

		public int getOriginalQuantity() {
			return originalQuantity;
		}
		public void setOriginalQuantity(int originalQuantity) {
			this.originalQuantity = originalQuantity;
		}
		public Double getSpecialPrice() {
			return specialPrice;
		}
		public void setSpecialPrice(Double specialPrice) {
			this.specialPrice = specialPrice;
		}
		public String getPacking() {
			return packing;
		}
		public void setPacking(String packing) {
			this.packing = packing;
		}
		public String getCode() {
			return code;
		}
		public void setCode(String code) {
			this.code = code;
		}
		public int getQuantity() {
			return 1;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		public int getActive() {
			return active;
		}
		public void setActive(int active) {
			this.active = active;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public int getInInventory() {
			return inInventory;
		}
		public void setInInventory(int inInventory) {
			this.inInventory = inInventory;
		}
		public String getCostPrice() {
			return costPrice;
		}
		public void setCostPrice(String costPrice) {
			this.costPrice = costPrice;
		}
		public String getProductClass() {
			return productClass;
		}
		public void setProductClass(String productClass) {
			this.productClass = productClass;
		}
		public String getSubClass() {
			return subClass;
		}
		public void setSubClass(String subClass) {
			this.subClass = subClass;
		}
		public int getTaxable() {
			return taxable;
		}
		public void setTaxable(int taxable) {
			this.taxable = taxable;
		}
		public String getProductExpiry() {
			return productExpiry;
		}
		public void setProductExpiry(String productExpiry) {
			this.productExpiry = productExpiry;
		}
		
		
}
