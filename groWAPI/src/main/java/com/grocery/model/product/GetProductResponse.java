package com.grocery.model.product;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.Product;

public class GetProductResponse extends BaseResponse{
	Product product;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}
