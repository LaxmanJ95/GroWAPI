package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.User;

public class UserNameExistResponse extends BaseResponse{
	
	boolean userNameExists;

	public boolean isUserNameExists() {
		return userNameExists;
	}

	public void setUserNameExists(boolean userNameExists) {
		this.userNameExists = userNameExists;
	}
	
	
}
