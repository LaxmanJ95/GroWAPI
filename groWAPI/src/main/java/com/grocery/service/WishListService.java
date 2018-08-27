package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.dao.WishListQuery;
import com.grocery.dao.WishListRepository;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.WishList;
import com.grocery.model.wishlist.SaveWishListRequest;
import com.grocery.model.wishlist.WishListItem;

@Service
@Transactional
public class WishListService {
	
	@Autowired
	WishListRepository wishListRepository;
	@Autowired
	WishListQuery wishListQuery;
	
	public WishList saveWishList(SaveWishListRequest request){
		WishList wish = null;
		for(WishList wishList : request.getWishList()){
			wish = this.wishListRepository.findByProductIdAndUserId(wishList.getProductId(),wishList.getUserId());
			if(wish == null)
				this.wishListRepository.save(wishList);
		}
		return wish;
	}
	
	public List<WishListItem> getWishListByUserId(long userId){
		return this.wishListQuery.getWishListByUserId(userId);
	}
	
	public void deleteById(int id){
		 this.wishListRepository.deleteById(id);
	}
	public WishList getByProductAndUser(Cart cart){
		WishList wishList = this.wishListRepository.findByProductIdAndUserId(cart.getProductId(), cart.getUserId());
		if(wishList == null)
			wishList = new WishList();
		wishList.setPrice(cart.getPrice());
		wishList.setProductId(cart.getProductId());
		wishList.setQuantity(cart.getQuantity());
		wishList.setUserId(cart.getUserId());
		wishListRepository.save(wishList);
		return wishList;
	}
}
