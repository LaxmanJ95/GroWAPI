package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.PaymentErrors;

@Repository
public interface PaymentErrorsRepository extends CrudRepository<PaymentErrors,Long>{

}
