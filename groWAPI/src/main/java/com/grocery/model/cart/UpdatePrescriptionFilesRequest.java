package com.grocery.model.cart;

import com.grocery.clib.model.BaseRequest;

public class UpdatePrescriptionFilesRequest extends BaseRequest{
	long cartId;
	String uploadedFiles;
	public long getCartId() {
		return cartId;
	}
	public void setCartId(long cartId) {
		this.cartId = cartId;
	}
	public String getUploadedFiles() {
		return uploadedFiles;
	}
	public void setUploadedFiles(String uploadedFiles) {
		this.uploadedFiles = uploadedFiles;
	}


	
	
}
