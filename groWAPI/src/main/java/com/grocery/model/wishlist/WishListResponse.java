package com.grocery.model.wishlist;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.WishList;

public class WishListResponse extends BaseResponse{

	List<WishListItem> wishList;

	public List<WishListItem> getWishList() {
		return wishList;
	}

	public void setWishList(List<WishListItem> wishList) {
		this.wishList = wishList;
	}
	
	
}
