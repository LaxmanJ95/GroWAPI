package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.PaymentMessages;

@Repository
public interface PaymentMessagesRepository extends CrudRepository<PaymentMessages,Long>{

}
