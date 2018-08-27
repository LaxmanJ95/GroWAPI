package com.grocery.model.citystate;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.AddressState;

public class StateResponse extends BaseResponse {

	List<AddressState> states;

	public List<AddressState> getStates() {
		return states;
	}

	public void setStates(List<AddressState> states) {
		this.states = states;
	}
	
}
