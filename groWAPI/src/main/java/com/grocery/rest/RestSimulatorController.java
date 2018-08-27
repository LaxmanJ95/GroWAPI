package com.grocery.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.model.restSimulator.AccountInfoRequest;
import com.grocery.model.restSimulator.AccountInfoResponse;

@RestController
@RequestMapping("/account")
@CrossOrigin( maxAge = 3600)
public class RestSimulatorController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@RequestMapping(method = RequestMethod.POST, value = "/validateEligibityAccountInfo")
	public AccountInfoResponse validateEligibityAccountInfo(@RequestBody AccountInfoRequest request){
		AccountInfoResponse response = new AccountInfoResponse();
		String accountNumber="9876543210-1";
		String ssn="1111";
		String phoneNumber="9876543210";
		try
		{
			if(request.getAccountNumber().equals(accountNumber)){
				if(request.getSsn().equals(ssn) || request.getPhoneNumber().equals(phoneNumber)){
					if(request.getPhoneNumber() != ""){
						response.setPersonId(phoneNumber);
					}
					response.setRuleKey("7007");
					response.setRuleMessage("Account is already linked. Please try with different one");
					response.setValidPGEAccount(true);
				}
				else{
					response.setValidPGEAccount(false);
					response.setSuccess(false);
				}
			}
			else{
				response.setValidPGEAccount(false);
				response.setSuccess(false);
			}
		}
		catch(Exception e){
			logger.error("error",e);
			response.setSuccess(false);
		}
		return response;
	}

	
}
