package com.grocery.model.userprofile;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.UserExt;

public class UserProfileResponse extends BaseResponse {
	
	UserExt userProfile;

	public UserExt getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(UserExt userProfile) {
		this.userProfile = userProfile;
	}
	

}
