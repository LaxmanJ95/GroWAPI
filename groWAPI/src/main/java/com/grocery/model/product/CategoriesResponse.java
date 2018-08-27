package com.grocery.model.product;

import java.util.List;

import com.grocery.clib.model.BaseResponse;

public class CategoriesResponse extends BaseResponse{

	List<ProductCategories> categories;

	public List<ProductCategories> getCategories() {
		return categories;
	}

	public void setCategories(List<ProductCategories> categories) {
		this.categories = categories;
	}
	
	
}
