package com.grocery.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.model.payment.PaymentInfoDetails;



@Service
@Transactional
public class PaymentQuery {

	 @Autowired
     JdbcTemplate jdbcTemplate;
	 
	 public double getCustomerBalance(long userId){
		 String sumOrderTotalPriceSQL = "select sum(total_price) from order_master where user_id="+userId;
		 String sumPaymentSQL = "select sum(payment) from customer_payment where user_id="+userId;
		 double sumOrderTotalPrice =  jdbcTemplate.queryForObject(sumOrderTotalPriceSQL,double.class);
		 double sumPayment =  jdbcTemplate.queryForObject(sumPaymentSQL,double.class);
		 return sumOrderTotalPrice-sumPayment;
	 }
	 
	 public List<PaymentInfoDetails> getInfoDetails(){
		 String query = "select payment_info.*,user.user_name from payment_info "
				 		+" inner join user on user.id = payment_info.user_id";
		 List<PaymentInfoDetails> info = jdbcTemplate.query(query, new BeanPropertyRowMapper(PaymentInfoDetails.class));
		 return info;
	 }
	 public List<PaymentInfoDetails> getPaymentPagination(int from, int to){
		 String query = "select payment_info.*,user.user_name from payment_info "
			 		+" inner join user on user.id = payment_info.user_id";
		 query+=" limit "+from+" ,"+to;
	 List<PaymentInfoDetails> info = jdbcTemplate.query(query, new BeanPropertyRowMapper(PaymentInfoDetails.class));
	 return info;
	 }
	 
}
