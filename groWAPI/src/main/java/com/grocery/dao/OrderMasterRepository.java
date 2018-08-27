package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.OrderMaster;

@Repository
public interface OrderMasterRepository extends CrudRepository<OrderMaster, Long>{

	OrderMaster findById(long id);
}


