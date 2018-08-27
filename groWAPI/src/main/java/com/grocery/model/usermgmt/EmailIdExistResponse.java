package com.grocery.model.usermgmt;

import com.grocery.clib.model.BaseResponse;

public class EmailIdExistResponse extends BaseResponse{
	
	boolean emailIdExist;

	public boolean isEmailIdExist() {
		return emailIdExist;
	}

	public void setEmailIdExist(boolean emailIdExist) {
		this.emailIdExist = emailIdExist;
	}
	
	

}
