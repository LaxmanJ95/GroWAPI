package com.grocery.rest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.service.email.EmailService;
import com.grocery.clib.service.email.EmailTemplateService;
import com.grocery.model.dbentity.CustomerPayment;
import com.grocery.model.dbentity.User;
import com.grocery.model.email.EmailMessage;
import com.grocery.model.payment.CustomerBalanceResponse;
import com.grocery.model.payment.CustomerPaymentRequest;
import com.grocery.model.payment.CustomerPaymentResponse;
import com.grocery.model.payment.PaymentInfoDetails;
import com.grocery.model.payment.PaymentInfoResponse;
import com.grocery.model.payment.PaymentPaginationRequest;
import com.grocery.service.PaymentService;
import com.grocery.service.UserMgmtService;

@RestController
@RequestMapping("/payment")
@CrossOrigin(maxAge=3600)
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private UserMgmtService userMgmtService;
	@Autowired
	private EmailService emailService;
	@Autowired
	private EmailTemplateService emailTemplateService;
	
	@RequestMapping(method = RequestMethod.POST , value ="/customerPayment")
	public CustomerPaymentResponse customerPayment(@RequestBody CustomerPaymentRequest request){
		CustomerPaymentResponse response = new CustomerPaymentResponse();
		try{
			CustomerPayment customerPayment = new CustomerPayment();
			customerPayment.setUserId(request.getUserId());
			customerPayment.setOrderId(request.getOrderId());
			customerPayment.setPaymentDate(new Date());
			customerPayment.setPayment(request.getPayment());
			customerPayment.setPaymentMethod(request.getPaymentMethod());
			customerPayment.setPaymentAgent(request.getPaymentAgent());
			CustomerPayment customer = paymentService.savecustomerPayment(customerPayment);
			User user = userMgmtService.getUserById(request.getUserId());
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("user", user);
			map.put("payment", customerPayment);
			String subject = "Your payment has been received ";
			String emailBody = emailTemplateService.getEmailTemplate("paymentReceived.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
		//	emailService.send2EmailQueue(emailMessage);
			logger.info("Payment Saved",customer );
			//System.out.println(customerPayment.getOrderDate());
		}
		catch(Exception e){
			logger.error("Payment Stored Failed", e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET , value ="/customerBalance/{userId}")
	public CustomerBalanceResponse customerBalance(@PathVariable long userId){
		CustomerBalanceResponse response = new CustomerBalanceResponse();
		try{
			double paymentDue = paymentService.getCustomerBalance(userId);
		//	response.setPaymentDue(payment.getPaymentDue());
			response.setPaymentDue(paymentDue);
			response.isSuccess();
			logger.info("customer");
		}
		catch(Exception e){
			logger.error("customer Balance shows error",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/getPaymentInfo")
	public PaymentInfoResponse getPaymentInfo(){
		PaymentInfoResponse response = new PaymentInfoResponse();
		try{
			List<PaymentInfoDetails> payments = paymentService.getInfoDetails();
			response.setPayments(payments);
			logger.info("customer");
		}
		catch(Exception e){
			logger.error("Payment list failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/paymentPagination")
	public  PaymentInfoResponse getPaymentPagination(@RequestBody PaymentPaginationRequest request){
		PaymentInfoResponse response = new PaymentInfoResponse();
		try{
			int from=1;
			int to=10;
			for(int i=1;i<=request.getValue();i++){
				if(i==1){
					from=0;
					to=10;
				}
				else{
					from+=10;
					to+=10;
				}
			}
			System.out.println(from+" pagination "+to);			
			List<PaymentInfoDetails> payments = paymentService.getPaymentPagination(from, to);
			response.setPayments(payments);
			logger.info("payment pagination");
		}
		catch(Exception e){
			logger.error("Payment list pagination failed",e);
			response.setSuccess(false);
		}
		return response;
	}
}
