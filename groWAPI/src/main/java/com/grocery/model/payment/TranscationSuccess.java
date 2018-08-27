package com.grocery.model.payment;

import com.grocery.model.dbentity.Payment;

import net.authorize.api.contract.v1.TransactionResponse;

public class TranscationSuccess {

	  	Payment payment;
	    TransactionResponse.Messages messages;
	    TransactionResponse.Errors errors;
	    boolean isSuccess;
	    
	    
		
		public Payment getPayment() {
			return payment;
		}
		public void setPayment(Payment payment) {
			this.payment = payment;
		}
		
		public TransactionResponse.Messages getMessages() {
			return messages;
		}
		public void setMessages(TransactionResponse.Messages messages) {
			this.messages = messages;
		}
		public TransactionResponse.Errors getErrors() {
			return errors;
		}
		public void setErrors(TransactionResponse.Errors errors) {
			this.errors = errors;
		}
		public boolean isSuccess() {
			return isSuccess;
		}
		public void setSuccess(boolean isSuccess) {
			this.isSuccess = isSuccess;
		}
	    
	    
}
