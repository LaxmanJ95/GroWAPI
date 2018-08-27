package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.dao.AddressStateRepository;
import com.grocery.dao.CityStateQuery;
import com.grocery.dao.ShippingRepository;
import com.grocery.dao.TaxRepository;
import com.grocery.model.dbentity.AddressCity;
import com.grocery.model.dbentity.AddressState;
import com.grocery.model.dbentity.BusinessInfo;
import com.grocery.model.dbentity.ShippingHandling;
import com.grocery.model.dbentity.Tax;

@Service
@Transactional
public class CityStateService {

	@Autowired
	private CityStateQuery cityStateQuery;
	@Autowired
	private AddressStateRepository addressStateRepository;
	@Autowired
	private TaxRepository taxRespository;
	@Autowired
	private ShippingRepository shippingRepository;
	
	
	public List<AddressState> getState() throws Exception{
		List<AddressState> states = this.cityStateQuery.getState();
		return states;
	}
	
	public List<AddressCity> getCityByStateId(int stateId) throws Exception{
		List<AddressCity> cities = this.cityStateQuery.getCity(stateId);
		return cities;
	}
	public List<AddressCity> getCityByStateName(String stateName) throws Exception{
		AddressState state = addressStateRepository.findByState(stateName);
		List<AddressCity> cities = this.getCityByStateId(state.getId());
		return cities;
	}
	public List<AddressCity> getCity() throws Exception{
		List<AddressCity> cities = this.cityStateQuery.getCity();
		return cities;
	}
	
	public Tax getTaxRateByCity(String city){
		return this.taxRespository.findByCity(city);
	}
	
	public  ShippingHandling getShippingRateByCity(String city){
		return this.shippingRepository.findByCity(city);
	}
	
	public BusinessInfo getInfo(){
		return this.cityStateQuery.getInfo();
	}
}
