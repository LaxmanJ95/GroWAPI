package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.WishList;

@Repository
public interface WishListRepository extends CrudRepository<WishList,Long>{

	WishList findByProductIdAndUserId(long id,long userId);
	List<WishList> findByUserId(long userId);
	Integer deleteById(int id);
}
