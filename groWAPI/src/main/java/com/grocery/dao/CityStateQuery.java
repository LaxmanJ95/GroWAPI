package com.grocery.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.model.dbentity.AddressCity;
import com.grocery.model.dbentity.AddressState;
import com.grocery.model.dbentity.BusinessInfo;
import com.grocery.model.order.MyOrder;

@Service
@Transactional
public class CityStateQuery {

	@Autowired
    JdbcTemplate jdbcTemplate;
	
	public List<AddressState> getState(){
		String query = "Select * from address_state";
		List<AddressState> state = jdbcTemplate.query(query, new BeanPropertyRowMapper(AddressState.class));
		return state;			
	}
	
	public List<AddressCity> getCity(int stateId){
		String query = "Select * from address_city where state_id="+stateId;
		List<AddressCity> city = jdbcTemplate.query(query, new BeanPropertyRowMapper(AddressCity.class));
		return city;			
	}
	public List<AddressCity> getCityByStateName(String stateName){
		
		String query = "Select * from address_city where state='"+stateName+"'";
		List<AddressCity> city = jdbcTemplate.query(query, new BeanPropertyRowMapper(AddressCity.class));
		return city;			
	}	
	public List<AddressCity> getCity(){
		
		String query = "Select * from address_city";
		List<AddressCity> city = jdbcTemplate.query(query, new BeanPropertyRowMapper(AddressCity.class));
		return city;			
	}	
	
	public BusinessInfo getInfo(){
		String query = "Select * from business_info";
		BusinessInfo businessInfo = (BusinessInfo) jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper(BusinessInfo.class));
		return businessInfo;
	}
}
