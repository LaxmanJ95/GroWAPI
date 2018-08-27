package com.grocery.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.model.dbentity.WishList;
import com.grocery.model.wishlist.WishListItem;

@Service
@Transactional
public class WishListQuery {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<WishListItem> getWishListByUserId(long userId){
		String query = "Select product.image_file,product.name,product.product_class,product.sub_class,product.description,product.special_price,product.cost_price,product.packing, wish_list.* from wish_list "
						+" inner join product on product.id = wish_list.product_id where wish_list.user_id="+userId;
		List<WishListItem> wishList = jdbcTemplate.query(query, new BeanPropertyRowMapper(WishListItem.class));
		return wishList;
	}
	
	public WishList deleteById(int id){
		String query = "Delete from wish_list where id="+id;
		WishList wishList = (WishList) jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper(WishList.class));
		return wishList;
	}
}
