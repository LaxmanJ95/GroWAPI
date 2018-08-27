package com.grocery.dao;

import org.springframework.data.repository.CrudRepository;

import com.grocery.model.dbentity.UserExt;

public interface UserProfileRepository extends CrudRepository<UserExt, Long> {

	UserExt findByUserId(int userId);

}
