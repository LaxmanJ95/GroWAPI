package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Payment;
@Repository
public interface PaymentRepository extends CrudRepository<Payment,Long>{

	
}
