package com.grocery.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.model.cart.CartTotal;
import com.grocery.model.cart.ViewCart;
import com.grocery.model.dbentity.Product;
import com.grocery.model.dbentity.UserExt;
import com.grocery.model.order.MyOrder;

@Service
@Transactional
public class CartQuery {
	 @Autowired
     JdbcTemplate jdbcTemplate;
	 
	/* public CartTotal getCartCount(long userId){
		 String cartTotalQuery = "select sum(quantity) totalQuantity,sum(price*quantity) totalPrice from Swastika.CART where USER_ID=?";
		 CartTotal cartTotal2= new CartTotal(0,0);		 
		 jdbcTemplate.query(
				 cartTotalQuery, new Object[] { userId },
	                (rs, rowNum) -> new CartTotal(rs.getDouble("totalQuantity"), rs.getDouble("totalPrice"))
	        ).forEach(cartTotal -> System.out.println(cartTotal.getTotalPrice()));
		 return cartTotal2;
	 }*/
	 public CartTotal getCartCount(long userId){
		 
		 CartTotal cart =null;
		 String checkUserId = "select exists (select * from user_ext where user_id=?)";
		int user = this.jdbcTemplate.queryForObject(checkUserId, new Object[] {userId},Integer.class);
		System.out.println(user);
		if(user == 0){
			String cartTotalQuery = "select sum(quantity) totalQuantity,round(sum(price*quantity),2) totalPrice from cart where user_id=?";
			 CartTotal cartTotal = this.jdbcTemplate.queryForObject(
					 cartTotalQuery,
				        new Object[]{userId},
				        new RowMapper<CartTotal>() {
				            public CartTotal mapRow(ResultSet rs, int rowNum) throws SQLException {
				            	CartTotal cartTotal = new CartTotal();
				            	cartTotal.setTotalQuantity(rs.getInt("totalQuantity"));
				            	cartTotal.setTotalPrice(rs.getString("totalPrice"));
				                return cartTotal;
				            }
				        });
				return cartTotal;
		}
		
		else{
			 String cartTotalQuery = "select sum(quantity) totalQuantity,round(sum(price*quantity),2) totalPrice from cart" +
						
						 " where cart.user_id=?";

			 CartTotal cartTotal = this.jdbcTemplate.queryForObject(
					 				cartTotalQuery,
					 					new Object[]{userId},
					 					new RowMapper<CartTotal>() {
			public CartTotal mapRow(ResultSet rs, int rowNum) throws SQLException {
				double finalPrice;
				double discountAmount;

				CartTotal cartTotal = new CartTotal();
				cartTotal.setTotalQuantity(rs.getInt("totalQuantity"));
				cartTotal.setTotalPrice(rs.getString("totalPrice"));
				System.out.println("total price:" +cartTotal.getTotalPrice());
		//		cartTotal.setDiscount(rs.getDouble("Discount_Percent"));
		//		double total = Double.parseDouble(cartTotal.getTotalPrice());
//				discountAmount = total * cartTotal.getDiscount()/100;
//				finalPrice = total - discountAmount;
//				cartTotal.setFinalPrice(finalPrice);
				
				return cartTotal;
			}
		});

			return cartTotal;
					
		}
				 
	 }
	 public List<ViewCart> getMyCart(long userId){
		 String cartQuery ="select cart.*,product.name product_name,product.image_file product_image_file from cart inner join product on cart.product_id=product.id where cart.user_id="+userId;
		 //List<ViewCart> = this.jdbcTemplate.queryForObject(cartQuery, ViewCart.class);
		 List<ViewCart> myCart  = jdbcTemplate.query(cartQuery, new BeanPropertyRowMapper(ViewCart.class));
		 return myCart; 
	 }
	 public boolean updateCartWithNewProductPrice(Product product){
		 String updateQuery ="update cart set price="+product.getSpecialPrice()+" where price=0 and product_id="+product.getId();
		 System.out.println(updateQuery);
		  jdbcTemplate.execute(updateQuery);
		 return true;
	 }
}
