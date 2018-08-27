package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.ShippingHandling;

@Repository
public interface ShippingRepository extends CrudRepository<ShippingHandling,Long>{

	ShippingHandling findByCity(String city);
}
