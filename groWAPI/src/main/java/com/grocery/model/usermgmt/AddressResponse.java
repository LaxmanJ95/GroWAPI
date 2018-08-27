package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.Address;

public class AddressResponse extends BaseResponse{

	Address address;

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
