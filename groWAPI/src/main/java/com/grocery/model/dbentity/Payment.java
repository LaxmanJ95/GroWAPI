package com.grocery.model.dbentity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Payment {

	@Id
	@GeneratedValue
	int id;
	String responseCode;
	String refId;
    String rawResponseCode;
    String authCode;
    String avsResultCode;
    String cvvResultCode;
    String cavvResultCode;
    String transId;
    String refTransId;
    String transHash;
    String accountNumber;
    String entryMode;
    String accountType;
    String splitTenderId;
    String transHashSha2;
    String status;
    int userId;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getResponseCode() {
		return responseCode;
	}
	public void setResponseCode(String responseCode) {
		this.responseCode = responseCode;
	}
	public String getRefId() {
		return refId;
	}
	public void setRefId(String refId) {
		this.refId = refId;
	}
	public String getRawResponseCode() {
		return rawResponseCode;
	}
	public void setRawResponseCode(String rawResponseCode) {
		this.rawResponseCode = rawResponseCode;
	}
	public String getAuthCode() {
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}
	public String getAvsResultCode() {
		return avsResultCode;
	}
	public void setAvsResultCode(String avsResultCode) {
		this.avsResultCode = avsResultCode;
	}
	public String getCvvResultCode() {
		return cvvResultCode;
	}
	public void setCvvResultCode(String cvvResultCode) {
		this.cvvResultCode = cvvResultCode;
	}
	public String getCavvResultCode() {
		return cavvResultCode;
	}
	public void setCavvResultCode(String cavvResultCode) {
		this.cavvResultCode = cavvResultCode;
	}
	public String getTransId() {
		return transId;
	}
	public void setTransId(String transId) {
		this.transId = transId;
	}
	public String getRefTransId() {
		return refTransId;
	}
	public void setRefTransId(String refTransId) {
		this.refTransId = refTransId;
	}
	public String getTransHash() {
		return transHash;
	}
	public void setTransHash(String transHash) {
		this.transHash = transHash;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getEntryMode() {
		return entryMode;
	}
	public void setEntryMode(String entryMode) {
		this.entryMode = entryMode;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getSplitTenderId() {
		return splitTenderId;
	}
	public void setSplitTenderId(String splitTenderId) {
		this.splitTenderId = splitTenderId;
	}
	public String getTransHashSha2() {
		return transHashSha2;
	}
	public void setTransHashSha2(String transHashSha2) {
		this.transHashSha2 = transHashSha2;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
    
    
}
