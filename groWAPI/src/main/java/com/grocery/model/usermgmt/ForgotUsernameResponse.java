package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseResponse;

public class ForgotUsernameResponse extends BaseResponse{
	String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}