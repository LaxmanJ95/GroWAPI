package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.PaymentInfo;

@Repository
public interface PaymentInfoRepository extends CrudRepository<PaymentInfo,Long>{

	List<PaymentInfo> findAll();
}
