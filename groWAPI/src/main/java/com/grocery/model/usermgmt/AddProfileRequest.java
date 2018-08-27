package com.grocery.model.usermgmt;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.User;

public class AddProfileRequest {
	
	User user;
	
	Address address;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	

}
