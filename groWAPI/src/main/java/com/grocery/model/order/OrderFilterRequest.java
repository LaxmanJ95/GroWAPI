package com.grocery.model.order;

public class OrderFilterRequest {

	String searchBy;
	String searchValue;
	int recordFrom;
	int recordTo;
	
	public String getSearchBy() {
		return searchBy;
	}
	public void setSearchBy(String searchBy) {
		this.searchBy = searchBy;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public int getRecordFrom() {
		return recordFrom;
	}
	public void setRecordFrom(int recordFrom) {
		this.recordFrom = recordFrom;
	}
	public int getRecordTo() {
		return recordTo;
	}
	public void setRecordTo(int recordTo) {
		this.recordTo = recordTo;
	}
	
	
}
