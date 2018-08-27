package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.grocery.model.dbentity.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	User findByUserNameAndPassword(String userName, String password);
	User findByUserName(String userName);
	User findByEmail(String email);
	User findByIdAndPassword(int id,String password);
	User findById(int id);
	
	
}



