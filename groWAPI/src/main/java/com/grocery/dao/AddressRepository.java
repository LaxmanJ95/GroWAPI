package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Address;

@Repository
public interface AddressRepository extends CrudRepository<Address, Long>{
	Address findByUserIdAndAddressType(long userId,long addressType);
	Address findByUserId(int userId);
	List<Address> findByUserIdAndAddressType(int userId,int addressType);
	Address findById(long id);
	Integer deleteById(long id);
}



