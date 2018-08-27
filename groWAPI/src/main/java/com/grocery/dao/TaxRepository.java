package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Tax;

@Repository
public interface TaxRepository extends CrudRepository<Tax,Long>{

	Tax findByCity(String city);
}
