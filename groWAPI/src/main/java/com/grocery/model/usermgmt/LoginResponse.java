package com.grocery.model.usermgmt;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.User;

public class LoginResponse extends BaseResponse{
	
	UserProfile userProfile;

	public UserProfile getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}
	

	
}
