package com.grocery.model.upload;

import java.util.List;

import com.grocery.clib.model.BaseResponse;
import com.grocery.model.dbentity.PrescriptionUploads;

public class PrescriptionFileResponse extends BaseResponse{
	

	List<String> prescriptionUploads;
	
	public List<String> getPrescriptionUploads() {
		return prescriptionUploads;
	}

	public void setPrescriptionUploads(List<String> prescriptionUploads) {
		this.prescriptionUploads = prescriptionUploads;
	}


	

}
