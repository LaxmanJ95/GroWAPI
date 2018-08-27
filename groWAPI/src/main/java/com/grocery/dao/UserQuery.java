package com.grocery.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.model.dbentity.Address;

@Service
@Transactional
public class UserQuery {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public Address getAddressByUserId(long userId, int addressType) {
		String qry = "select * from address where user_id=" + userId + " and address_type=" + addressType;

		// List<ViewCart> = this.jdbcTemplate.queryForObject(cartQuery,
		// ViewCart.class);
		Address address = (Address) jdbcTemplate.queryForObject(qry, new BeanPropertyRowMapper(Address.class));
		return address;
	}

	public int getUserRoleId(long userId) {
		int roleId = 4;
		String qry = "select role_id from user_role_mapping where user_id=?";
		System.out.println(qry);
		try {
			//roleId = (Integer) jdbcTemplate.queryForObject(qry, new BeanPropertyRowMapper(Integer.class));
			roleId = jdbcTemplate.queryForObject(
					qry, new Object[] { userId }, Integer.class);

		} catch (EmptyResultDataAccessException e) {
			roleId=4;
		}catch (Exception e) {
			roleId=4;
		}
		return roleId;
	}
}
