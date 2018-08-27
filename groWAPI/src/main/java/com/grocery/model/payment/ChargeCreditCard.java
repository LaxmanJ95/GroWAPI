package com.grocery.model.payment;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Properties;
import java.util.UUID;

import org.apache.poi.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.grocery.clib.util.EBIZUtil;
import com.grocery.clib.util.JSONUtil;
import com.grocery.model.dbentity.Payment;
import com.grocery.model.dbentity.PaymentErrors;
import com.grocery.rest.OrderController;
import com.grocery.service.PaymentService;

import net.authorize.Environment;
import net.authorize.api.contract.v1.*;
import net.authorize.api.controller.base.ApiOperationBase;
import net.authorize.api.controller.CreateTransactionController;

public class ChargeCreditCard {
	
	private static final Logger logger = LoggerFactory.getLogger(ChargeCreditCard.class);
	@Autowired
	PaymentService paymentService;
		

	
    public  TranscationSuccess getPayment(MakePayment makePayment,String refId) throws FileNotFoundException, IOException { {
    	TranscationSuccess ifSuccess = new TranscationSuccess(); 
    	String apiLoginID="";
    	 String transactionKey= "";
   	 Properties properties = new Properties();
 
    	String locationProperties;
		locationProperties = EBIZUtil.getConfigDIR() + "/paymentCredentials.properties";
		properties.load(new FileReader(locationProperties));
		apiLoginID = properties.getProperty("ApiLoginID");
		transactionKey = properties.getProperty("TransactionKey");
    	
        //Common code to set for all requests
        ApiOperationBase.setEnvironment(Environment.SANDBOX);

        MerchantAuthenticationType merchantAuthenticationType  = new MerchantAuthenticationType() ;
        merchantAuthenticationType.setName(apiLoginID);
        merchantAuthenticationType.setTransactionKey(transactionKey);
        ApiOperationBase.setMerchantAuthentication(merchantAuthenticationType);

        // Populate the payment data
        PaymentType paymentType = new PaymentType();
        CreditCardType creditCard = new CreditCardType();
        creditCard.setCardNumber(makePayment.getCardNumber());
        creditCard.setExpirationDate(makePayment.getExpirationDate());
        creditCard.setCardCode(makePayment.getCardCode());
        paymentType.setCreditCard(creditCard);
        LineItemType lineItems = new LineItemType();
        
//        CustomerAddressType billTo = new CustomerAddressType();
//        billTo.setFirstName(makePayment.getUserDetails().getFirstName());
//        billTo.setLastName(makePayment.getUserDetails().getLastName());
//        billTo.setAddress(makePayment.getAddress().getStreet());
//        billTo.setCity(makePayment.getAddress().getCity());
//        billTo.setCountry(makePayment.getAddress().getCountry());
//        billTo.setZip(makePayment.getAddress().getZipcode());
//        
//        NameAndAddressType shipTo = new NameAndAddressType();
//        shipTo.setFirstName(makePayment.getUserDetails().getFirstName());
//        shipTo.setLastName(makePayment.getUserDetails().getLastName());
//        shipTo.setAddress(makePayment.getAddress().getStreet());
//        shipTo.setCity(makePayment.getAddress().getCity());
//        shipTo.setCountry(makePayment.getAddress().getCountry());
//        shipTo.setZip(makePayment.getAddress().getZipcode());
        // Create the payment transaction request
        TransactionRequestType txnRequest = new TransactionRequestType();
        txnRequest.setTransactionType(TransactionTypeEnum.AUTH_CAPTURE_TRANSACTION.value());
        txnRequest.setPayment(paymentType);
        txnRequest.setAmount(new BigDecimal(makePayment.getTotalAmount()));
//        txnRequest.setBillTo(billTo);
//        txnRequest.setShipTo(shipTo);
        
       
        // Make the API Request
        CreateTransactionRequest apiRequest = new CreateTransactionRequest();
        apiRequest.setTransactionRequest(txnRequest);
        CreateTransactionController controller = new CreateTransactionController(apiRequest);
        controller.execute();


        CreateTransactionResponse response = controller.getApiResponse();
        System.out.println("response for the payment "+JSONUtil.toJson(response));
        Payment payment = new Payment();
        if (response!=null) {
        	
            // If API Response is ok, go ahead and check the transaction response
            if (response.getMessages().getResultCode() == MessageTypeEnum.OK) { 
            	System.out.println(JSONUtil.toJson(response));
                TransactionResponse result = response.getTransactionResponse();
                if (result.getResponseCode().equals("1")) {
                	System.out.println("checking  "+JSONUtil.toJson(response.getMessages().getMessage()));
                	try{
                	
                	System.out.println("@@Co ming..");
                	payment.setRefId(refId);
                	payment.setAccountNumber(response.getTransactionResponse().getAccountNumber());
                	payment.setAccountType(response.getTransactionResponse().getAccountType());
                	payment.setAuthCode(response.getTransactionResponse().getAuthCode());
                	payment.setAvsResultCode(response.getTransactionResponse().getAvsResultCode());
                	payment.setCavvResultCode(response.getTransactionResponse().getCavvResultCode());
                	payment.setCvvResultCode(response.getTransactionResponse().getCvvResultCode());
                	payment.setEntryMode(response.getTransactionResponse().getEntryMode());
                	payment.setRefTransId(response.getTransactionResponse().getRefTransID());
                	payment.setResponseCode(response.getTransactionResponse().getResponseCode());
                	payment.setTransHash(response.getTransactionResponse().getTransHash());
                	payment.setTransId(response.getTransactionResponse().getTransId());
                	payment.setRawResponseCode(response.getTransactionResponse().getRawResponseCode());
                	payment.setSplitTenderId(response.getTransactionResponse().getSplitTenderId());
                	payment.setTransHashSha2(response.getTransactionResponse().getTransHashSha2());
                	payment.setUserId(makePayment.getUserDetails().getId());
                	payment.setStatus("Success");
                	ifSuccess.setPayment(payment);
                	System.out.println("Sainvnn");
                	System.out.println(JSONUtil.toJson(payment));
                	ifSuccess.setPayment(payment);
                	ifSuccess.setMessages(response.getTransactionResponse().getMessages());
                	ifSuccess.setErrors(response.getTransactionResponse().getErrors());
                	
                	}
                	catch(Exception e){
                		logger.error("failed",e);
                	}
                	
                	ifSuccess.setSuccess(true);
                    System.out.println(result.getResponseCode());
                    System.out.println("Successful Credit Card Transaction");
                    System.out.println(result.getAuthCode());
                    System.out.println(result.getTransId());
                }
                else
                {
                	ifSuccess.setSuccess(false);
                    System.out.println("Failed Transaction after message code"+result.getResponseCode());
                }
            }
            else
            {
            	
            	payment.setRefId(UUID.randomUUID().toString());
            	payment.setAccountNumber(response.getTransactionResponse().getAccountNumber());
            	payment.setAccountType(response.getTransactionResponse().getAccountType());
            	payment.setAuthCode(response.getTransactionResponse().getAuthCode());
            	payment.setAvsResultCode(response.getTransactionResponse().getAvsResultCode());
            	payment.setCavvResultCode(response.getTransactionResponse().getCavvResultCode());
            	payment.setCvvResultCode(response.getTransactionResponse().getCvvResultCode());
            	payment.setEntryMode(response.getTransactionResponse().getEntryMode());
            	payment.setRefTransId(response.getTransactionResponse().getRefTransID());
            	payment.setResponseCode(response.getTransactionResponse().getResponseCode());
            	payment.setTransHash(response.getTransactionResponse().getTransHash());
            	payment.setTransId(response.getTransactionResponse().getTransId());
            	payment.setRawResponseCode(response.getTransactionResponse().getRawResponseCode());
            	payment.setSplitTenderId(response.getTransactionResponse().getSplitTenderId());
            	payment.setTransHashSha2(response.getTransactionResponse().getTransHashSha2());
            	payment.setUserId(makePayment.getUserDetails().getId());
            	payment.setStatus("Failure");
            	ifSuccess.setPayment(payment);
            	ifSuccess.setSuccess(false);
//                PaymentErrors paymentErrors = new PaymentErrors();
//             
//                if(response.getTransactionResponse().getErrors().getError() != null){					
//				 for(net.authorize.api.contract.v1.TransactionResponse.Errors.Error errors : response.getTransactionResponse().getErrors().getError()){
//					 paymentErrors.setErrorCode(errors.getErrorCode());
//					 paymentErrors.setErrorText(errors.getErrorText());
//					 paymentErrors.setPaymentId(payment.getId());
//					 paymentService.savePaymentErrors(paymentErrors);
//				 }
//			 }
            }
        }
        else{
        	System.out.println("Failure transcation ");
        	ifSuccess.setSuccess(false);
        }
        
        return ifSuccess;
    }
    

    }
}
