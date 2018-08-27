package com.grocery.rest;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.model.citystate.BusinessInfoResponse;
import com.grocery.model.citystate.CityResponse;
import com.grocery.model.citystate.StateResponse;
import com.grocery.model.dbentity.AddressCity;
import com.grocery.model.dbentity.AddressState;
import com.grocery.model.dbentity.BusinessInfo;
import com.grocery.service.CityStateService;

@RestController
@RequestMapping("/address")
@CrossOrigin( maxAge = 3600)
public class CityStateController {

	private static final Logger logger = LoggerFactory.getLogger(CityStateController.class);
	
	@Autowired
	private CityStateService cityStateService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/getStates")
	public StateResponse getStates(){
		StateResponse response = new StateResponse();
		try{
			List<AddressState> getStates = cityStateService.getState();
			response.setStates(getStates);
		}
		catch(Exception e){
			logger.error("Getting States failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/getCities")
	public CityResponse getCities(){
		CityResponse response = new CityResponse();
		try{
			List<AddressCity> getCitiesByStateId = cityStateService.getCity();
			response.setCities(getCitiesByStateId);
		}
		catch(Exception e){
			logger.error("Getting Cities failed ",e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/getCities/{stateId}")
	public CityResponse getCitiesByStateId(@PathVariable int stateId){
		CityResponse response = new CityResponse();
		try{
			List<AddressCity> getCitiesByStateId = cityStateService.getCityByStateId(stateId);
			response.setCities(getCitiesByStateId);
		}
		catch(Exception e){
			logger.error("Getting Cities failed ",e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/getCitiesByStateName/{stateName}")
	public CityResponse getCitiesByStateName(@PathVariable String stateName){
		CityResponse response = new CityResponse();
		try{
			List<AddressCity> getCitiesByStateId = cityStateService.getCityByStateName(stateName);
			response.setCities(getCitiesByStateId);
		}
		catch(Exception e){
			logger.error("Getting Cities failed ",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/getInfo")
	public BusinessInfoResponse getInfo(){
		BusinessInfoResponse response = new BusinessInfoResponse();
		try{
			BusinessInfo businessInfo  = cityStateService.getInfo();
			response.setBusinessInfo(businessInfo);
			logger.info("info of website");
		}
		catch(Exception e){
			logger.error("Info failed",e);
			response.setSuccess(false);
		}
		return response;
	}
}
