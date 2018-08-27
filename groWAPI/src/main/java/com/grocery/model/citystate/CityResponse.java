package com.grocery.model.citystate;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.AddressCity;

public class CityResponse extends BaseResponse {

	List<AddressCity> cities;

	public List<AddressCity> getCities() {
		return cities;
	}

	public void setCities(List<AddressCity> cities) {
		this.cities = cities;
	}
	
}
