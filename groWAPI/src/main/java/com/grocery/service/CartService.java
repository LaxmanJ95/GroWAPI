package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.CartQuery;
import com.grocery.dao.CartRepository;
import com.grocery.dao.PrescriptionUploadsRepository;
import com.grocery.model.cart.CartTotal;
import com.grocery.model.cart.SaveCartRequest;
import com.grocery.model.cart.ViewCart;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.PrescriptionUploads;

@Service
@Transactional
public class CartService {
	@Autowired
	private  CartRepository cartRepository;
	@Autowired
	private  PrescriptionUploadsRepository prescriptionUploadsRepository;
	
	@Autowired
	private  CartQuery cartQuery;
	 
	public CartService( ) {
			//this.userRepository = userRepository;
	}
	public Cart save2Cart(Cart cart){
		return this.cartRepository.save(cart);
	}
	public CartTotal add2Cart(SaveCartRequest request){
		System.out.print("request : "+JSONUtil.toJson(request.getCart()));
		long userId=0;
		//CartTotal total = new CartTotal(12,12);
		for(Cart cart: request.getCart()){
			Cart savedCart = null;
		try{
			savedCart = cartRepository.findByProductIdAndUserId(cart.getProductId(), cart.getUserId());
		}
		catch(Exception e){
			
		}
		 if(savedCart == null){
			 savedCart = new Cart();
		 }
		 savedCart.setPrice(cart.getPrice());
		 savedCart.setProductId(cart.getProductId());
		 savedCart.setQuantity(cart.getQuantity());
		 savedCart.setUserId(cart.getUserId());
		 cartRepository.save(savedCart);
		 userId = cart.getUserId();
		 
//		 if(cart.getUploadedFiles()!=null ){
//			 updatePrescriptionFiles(savedCart.getId(),cart.getUploadedFiles());
//		 }
		}
		if(userId==0){
			throw new RuntimeException("Add2Cart failed userId is 0");
		}
		//CartTotal cartTotal = cartQuery.getCartCount(userId);
		//cartTotal.setCartId(savedCart.getId());
		return cartQuery.getCartCount(userId);     
	}
	public boolean updatePrescriptionFiles(long cartId,String uploadedFiles){
		 String[] filePaths = uploadedFiles.split(",");
			
		 for(String filePath: filePaths){
			 PrescriptionUploads pres = new PrescriptionUploads();
			 pres.setCartId(cartId);
			 pres.setFilePath(filePath);
			 prescriptionUploadsRepository.save(pres);
		 }
		return true;
	}
	public boolean deletePrescriptionFiles(long cartId){
		prescriptionUploadsRepository.deleteByCartId(cartId);
		return true;
	}
	public boolean deleteUploadedFilesByFilePath(String filePath){
		prescriptionUploadsRepository.deleteByFilePath(filePath);
		return true;
	}
	public List<ViewCart> viewMyCart(long userId){
		return cartQuery.getMyCart(userId);
	}
	public CartTotal getCartCount(long userId){
		return cartQuery.getCartCount(userId);
	}
	public void updateQuantity(long cartId,int quantity){
		if(quantity<1){
			cartRepository.delete(cartId);
			prescriptionUploadsRepository.deleteByCartId(cartId);
			
		}else{
			Cart cart = cartRepository.findOne(cartId);
			cart.setQuantity(quantity);
			cartRepository.save(cart);
		}
		return;
		
	}
	Integer deleteByUserId(long userId){
		return cartRepository.deleteByUserId(userId);
		//prescriptionUploadsRepository.deleteByUserId(cartId);
	}
	public void deleteById(long id){
		 cartRepository.deleteById(id);
	}
	public List<Cart> getCartByUserId(int userId){
		return this.cartRepository.findAllByUserId(userId);
	}
	
	public Cart findById(long id){
		return this.cartRepository.findById(id);
	}
	
}



