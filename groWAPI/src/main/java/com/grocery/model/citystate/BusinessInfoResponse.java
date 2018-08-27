package com.grocery.model.citystate;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.BusinessInfo;

public class BusinessInfoResponse extends BaseResponse{

	BusinessInfo businessInfo;

	public BusinessInfo getBusinessInfo() {
		return businessInfo;
	}

	public void setBusinessInfo(BusinessInfo businessInfo) {
		this.businessInfo = businessInfo;
	}
	
	
}
