package com.grocery.model.wishlist;

import java.util.List;

import com.grocery.model.dbentity.WishList;

public class SaveWishListRequest {

	List<WishList> wishList;

	public List<WishList> getWishList() {
		return wishList;
	}

	public void setWishList(List<WishList> wishList) {
		this.wishList = wishList;
	}
	
	
}
