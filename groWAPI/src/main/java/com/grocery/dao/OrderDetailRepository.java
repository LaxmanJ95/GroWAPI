package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.OrderDetail;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Long>{
	public List<OrderDetail> findAllByOrderId(long orderId);
	
	List<OrderDetail> findByOrderId(long id);
	List<OrderDetail> findAll();
}



