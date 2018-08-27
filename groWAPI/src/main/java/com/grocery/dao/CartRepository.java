package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.Product;

@Repository
public interface CartRepository extends CrudRepository<Cart, Long>{
	public List<Cart> findAllByUserId(long userId);
	Integer deleteByUserId(long userId);
	Cart findById(long id);
	Integer deleteById(long id);
	Cart findByProductIdAndUserId(long id,long userId);
}



