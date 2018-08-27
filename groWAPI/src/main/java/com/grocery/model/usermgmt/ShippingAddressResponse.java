package com.grocery.model.usermgmt;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.Address;

public class ShippingAddressResponse extends BaseResponse{

	List<Address> address;

	public List<Address> getAddress() {
		return address;
	}

	public void setAddress(List<Address> address) {
		this.address = address;
	}
	
	
}
