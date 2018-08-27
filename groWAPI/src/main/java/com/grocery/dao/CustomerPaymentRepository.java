package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.CustomerPayment;

@Repository
public interface CustomerPaymentRepository extends CrudRepository<CustomerPayment, Long> {

	CustomerPayment findByOrderId(long orderId);
	
}
