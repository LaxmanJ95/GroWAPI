package com.grocery.rest;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.dao.WishListRepository;
import com.grocery.model.cart.CartIdRequest;
import com.grocery.model.cart.CartTotal;
import com.grocery.model.cart.SaveCartRequest;
import com.grocery.model.cart.SaveCartResponse;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.WishList;
import com.grocery.model.wishlist.SaveWishListRequest;
import com.grocery.model.wishlist.WishListItem;
import com.grocery.model.wishlist.WishListResponse;
import com.grocery.service.CartService;
import com.grocery.service.WishListService;

@RestController
@RequestMapping("/wishlist")
@CrossOrigin( maxAge = 3600)
public class WishListController {

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired 
	WishListService wishListService;
	
	@Autowired
	WishListRepository wishListRepository;
	
	@Autowired
	CartService cartService;
	
	@RequestMapping(method = RequestMethod.POST, value = "/add2WishList")
	public SuccessIDResponse add2Cart(@RequestBody SaveWishListRequest request) {
		SuccessIDResponse response = new SuccessIDResponse();

		try {
			WishList wishList = this.wishListService.saveWishList(request);
			logger.info("wishList added ");
		} catch (Exception e) {
			logger.error("wishList failed", e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/getWishList/{userId}")
	public WishListResponse getWishListByUserId(@PathVariable long userId){
		WishListResponse response = new WishListResponse();
		try{
			List<WishListItem> wishList = wishListService.getWishListByUserId(userId);
			response.setWishList(wishList);
			logger.info("Wish list by userId");
		}
		catch(Exception e){
			logger.error("Wish list failed by userID",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/deleteFormWishList/{id}")
	public SuccessIDResponse deleteFromWishList(@PathVariable int id){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			wishListService.deleteById(id);
			response.setSuccess(true);
		}
		catch(Exception e){
			logger.error("Wish list deleted by ID",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/copyFromCart")
	public SuccessIDResponse copyFromCart(@RequestBody CartIdRequest request){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			Cart cart = cartService.findById(request.getId());
			WishList wishList = wishListService.getByProductAndUser(cart);
			cartService.deleteById(request.getId());
			logger.info("wishlist added");
		}
		catch(Exception e){
			logger.error("Wish list addded failed by ID",e);
			response.setSuccess(false);
		}
		return response;
	}
	
}
