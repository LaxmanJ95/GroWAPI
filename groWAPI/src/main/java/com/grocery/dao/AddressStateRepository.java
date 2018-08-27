package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.AddressState;


@Repository
public interface AddressStateRepository extends CrudRepository<AddressState, Long>{
	AddressState findByState(String state);
}