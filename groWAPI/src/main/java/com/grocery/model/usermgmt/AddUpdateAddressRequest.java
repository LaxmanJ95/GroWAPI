package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseRequest;
import com.grocery.model.dbentity.Address;

public class AddUpdateAddressRequest extends BaseRequest{

	Address address;

	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
