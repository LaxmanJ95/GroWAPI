package com.grocery.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.CartQuery;
import com.grocery.dao.CustomerPaymentRepository;
import com.grocery.dao.PaymentErrorsRepository;
import com.grocery.dao.PaymentInfoRepository;
import com.grocery.dao.PaymentMessagesRepository;
import com.grocery.dao.PaymentQuery;
import com.grocery.dao.PaymentRepository;
import com.grocery.model.dbentity.CustomerPayment;
import com.grocery.model.dbentity.Payment;
import com.grocery.model.dbentity.PaymentErrors;
import com.grocery.model.dbentity.PaymentInfo;
import com.grocery.model.dbentity.PaymentMessages;
import com.grocery.model.payment.PaymentInfoDetails;



@Service
@Transactional
public class PaymentService {

	@Autowired
	private  CustomerPaymentRepository customerPaymentRepository;
	@Autowired
	private  PaymentQuery paymentQuery;
	@Autowired
	private PaymentRepository paymentReposiotry;
	@Autowired
	private PaymentMessagesRepository paymentMessagesReposiotry;
	@Autowired
	private PaymentErrorsRepository paymentErrorsReposiotry;
	@Autowired
	private PaymentInfoRepository paymentInfoRepository;

	public CustomerPayment savecustomerPayment(CustomerPayment customerPayment){
		CustomerPayment customerPayment1 = this.customerPaymentRepository.save(customerPayment);
		return customerPayment1;
	}
	public double getCustomerBalance(long userId){
		double paymentDue = paymentQuery.getCustomerBalance(userId);
		return paymentDue;
	}
	
	public Payment savePayment(Payment payment){
		return this.paymentReposiotry.save(payment);
	}
	public PaymentMessages savePaymentMessages(PaymentMessages messages){
		return this.paymentMessagesReposiotry.save(messages);
	}
	public PaymentErrors savePaymentErrors(PaymentErrors errors){
		return this.paymentErrorsReposiotry.save(errors);
	}
	public PaymentInfo savePaymentInfo(PaymentInfo paymentInfo){
		return this.paymentInfoRepository.save(paymentInfo);
	}
	public List<PaymentInfoDetails> getInfoDetails(){
		return this.paymentQuery.getInfoDetails();
	}
	public List<PaymentInfoDetails> getPaymentPagination(int from,int to){
		return this.paymentQuery.getPaymentPagination(from, to);
	}
}
