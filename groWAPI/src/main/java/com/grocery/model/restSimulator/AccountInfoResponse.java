package com.grocery.model.restSimulator;

import com.grocery.clib.model.BaseResponse;

public class AccountInfoResponse extends BaseResponse{

	String techErrorCode;
	String errorKey;
	String errorMessage;
	String validationErrorMap;
	String validationErrors;
	String personId;
	boolean validPGEAccount;
	String ruleKey;
	String ruleMessage;
	public String getRuleKey() {
		return ruleKey;
	}
	public void setRuleKey(String ruleKey) {
		this.ruleKey = ruleKey;
	}
	public String getRuleMessage() {
		return ruleMessage;
	}
	public void setRuleMessage(String ruleMessage) {
		this.ruleMessage = ruleMessage;
	}
	public String getTechErrorCode() {
		return techErrorCode;
	}
	public void setTechErrorCode(String techErrorCode) {
		this.techErrorCode = techErrorCode;
	}
	public String getErrorKey() {
		return errorKey;
	}
	public void setErrorKey(String errorKey) {
		this.errorKey = errorKey;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getValidationErrorMap() {
		return validationErrorMap;
	}
	public void setValidationErrorMap(String validationErrorMap) {
		this.validationErrorMap = validationErrorMap;
	}
	public String getValidationErrors() {
		return validationErrors;
	}
	public void setValidationErrors(String validationErrors) {
		this.validationErrors = validationErrors;
	}
	public String getPersonId() {
		return personId;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	public boolean isValidPGEAccount() {
		return validPGEAccount;
	}
	public void setValidPGEAccount(boolean validPGEAccount) {
		this.validPGEAccount = validPGEAccount;
	}
	
	
}
