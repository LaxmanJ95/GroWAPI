package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseResponse;


public class ForgotPasswordResponse extends BaseResponse{

	
	String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
	}