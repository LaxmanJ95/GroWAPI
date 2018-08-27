package com.grocery.model.usermgmt;

import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.User;
import com.grocery.model.dbentity.UserExt;

public class UserProfile extends User{
	Address address;
	long roleId;
	UserExt userExt;

	public UserProfile(User user){
		this.setId(user.getId());
		this.setUserName(user.getUserName());
		this.setFirstName(user.getFirstName());
		this.setLastName(user.getLastName());
		this.setEmail(user.getEmail());
		this.setPhoneNumber(user.getPhoneNumber());
		this.setId(user.getId());

	}
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	public long getRoleId() {
		return roleId;
	}
	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}
	public UserExt getUserExt() {
		return userExt;
	}
	public void setUserExt(UserExt userExt) {
		this.userExt = userExt;
	}
	

	
}
