package com.grocery.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long>{

	 
	public List<Product> findAllByOrderByNameAsc();

	Product findById(long id);
	List<Product> findAllByProductClass(String productClass);
	List<Product> findAllBySubClass(String subClass);


}



