package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseRequest;

public class UserNameExistRequest extends BaseRequest{
	String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	

}
