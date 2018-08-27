package com.grocery.model.product;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.Product;

public class SearchProductResponse extends BaseResponse{
	List<Product> products;
	long count;
	

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public long getCount() {
		return count;
	}

	public void setCount(long count) {
		this.count = count;
	}
	

	
	
}
