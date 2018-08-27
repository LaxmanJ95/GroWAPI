package com.grocery.dao;

import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.*;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;
import com.grocery.model.dbentity.Product;
import com.grocery.model.order.MyOrder;
import com.grocery.model.order.MyOrderDetail;
import com.grocery.model.order.MyOrderMasterDetails;
import com.grocery.model.order.OrderDetailSummary;
import com.grocery.model.order.OrderFilterByProduct;
import com.grocery.model.order.SearchOrder;



@Service
@Transactional
public class OrderQuery {
	 @Autowired
     JdbcTemplate jdbcTemplate;
	 
	 public List<MyOrder> getOrders(){
		 String query ="select OM.*,U.First_Name as User_Name,UE.PROFILE_IMAGE_URL,OS.description as status  from order_master OM"+
				 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
				 			" inner join user U on OM.USER_ID=U.ID"+
		 					" left join user_ext UE on OM.USER_ID=UE.USER_ID limit 10";
		 List<MyOrder> orders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		 return orders; 
	 }	 
	 public List<MyOrder> getCount(){
		 String query = "select OM.*,U.First_Name as User_Name,UE.PROFILE_IMAGE_URL,OS.description as status  from order_master OM"+
				 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
				 			" inner join user U on OM.USER_ID=U.ID"+
		 					" left join user_ext UE on OM.USER_ID=UE.USER_ID";
		 List<MyOrder> orders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		 return orders; 
	 }
	 public List<MyOrder> getOrderByFilter(String searchBy,String searchValue,int recordFrom,int recordTo){
		 		 
		 String query = null;
		 if(searchBy.equals("order")){
			 query="select * from order_master where id="+searchValue;
			 
		 }
		 else if(searchBy.equals("user")){
		
			 String	reset = "set @row_number=0";			 			
			 jdbcTemplate.update(reset);
		     query="select (@row_number:=@row_number+1) as row_number, user.user_name,user.id,order_master.* from order_master"+
		    		 " inner join user on order_master.user_id=user.id and user_name like '%"+searchValue+"%' ";
		     query+="limit "+recordFrom+","+recordTo;
		 }
		
		 List<MyOrder> order = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		 System.out.println(JSONUtil.toJson(order));
		 return order;
		
	 }
	 
	 public List<OrderFilterByProduct> getOrderFilterByProduct(String searchValue,int recordFrom,int recordTo){
		 
		 String reset = "set @row_number=0";
		 jdbcTemplate.update(reset);
		 String  query = "select distinct  (@row_number:=@row_number+1) as row_number,product.id,product.name,product.user_id,order_detail.* from order_detail "+
				 			"inner join  product on product.id=order_detail.product_id and name like '%"+searchValue+"%'";
		 
		 query+="limit "+recordFrom+","+recordTo;
		 List<OrderFilterByProduct> orderFilter = jdbcTemplate.query(query, new BeanPropertyRowMapper(OrderFilterByProduct.class));
		 System.out.println("@@@@@@@@@@@@@@@"+JSONUtil.toJson(orderFilter));
		 return orderFilter;
	 }
	 
	 public List<OrderDetail> getExcelOrders(){
		 String query ="select * from order_detail";
		 List<OrderDetail> orders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(OrderDetail.class));
		 return orders; 
	 }	 
	 public List<MyOrder> getMyOrders(long userId){
		 String query ="select OM.*,((SELECT ROUND(SUM(total_price), 2) FROM order_master where user_id="+userId +") - (SELECT ROUND(SUM(payment),2) FROM customer_payment where user_id="+userId+")) AS balance," +
				 			" OS.DESCRIPTION as STATUS  from order_master OM " +
				 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
				 			" where OM.USER_ID="+userId;
		 List<MyOrder> myOrders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		 System.out.println(JSONUtil.toJson(myOrders));
		 return myOrders; 
	 }
	 public MyOrder getMyOrder(long orderId){
		 String query ="select OM.*,OS.DESCRIPTION as STATUS  from order_master OM"+
				 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
				 			" where OM.ID="+orderId;
		 MyOrder myOrder  = (MyOrder)jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper(MyOrder.class));
		 return myOrder; 
	 }
	 public List<MyOrderDetail> getMyOrderDetail(long orderId){
		 String query ="SELECT OD.*,P.name as product_name FROM order_detail OD   "+
				 			" inner join product P on OD.PRODUCT_ID=P.ID"+
				 			" where OD.ORDER_ID="+orderId;
		 List<MyOrderDetail> myOrderDetail  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrderDetail.class));
		 return myOrderDetail; 
	 }	
	 public List<MyOrderMasterDetails> getMyOrderMasterDetails(SearchOrder order) throws ParseException{
		 String dateFromString="";
			String dateToString="";
			if(order.getId() == null)
				order.setId("");
			if(order.getTotalItems() == null)
				order.setTotalItems("");
			if(order.getTotalPrice() == null)
				order.setTotalPrice("");
			if(order.getName() == null)
				order.setName("");
			
		 String query = "Select DISTINCT(OD.ID) as ORDER_LIST,  OM.*,OD.*,P.id,P.name,U.id,U.user_Name FROM order_master OM " +
				 			"inner join order_detail OD on OD.ORDER_ID=OM.ID " +
				 			"inner join product P on P.ID=OD.PRODUCT_ID " + 
				 			"inner join user U on U.ID=OD.USER_ID ";
			 query+=" where OM.id like '%"+order.getId()+"%' "
				 		+ " and OM.total_quantity like'%"+order.getTotalItems()+"%'"
				 		+ " and OM.total_price like '%"+order.getTotalPrice()+"%'"
				 		+ " and U.first_name like '%"+order.getName()+"%'"; 

			 if(!order.getFromDate().isEmpty() && !order.getFromDate().equals(null) && order.getToDate().isEmpty()){
				 dateFromString = DateTimeUtil.convertToStringFormat(order.getFromDate());
				query+=" and DATE_FORMAT(OM.order_date, '%m/%d/%Y') >= '"+dateFromString+"'";
			 }
			 if(!order.getFromDate().isEmpty() && !order.getFromDate().equals(null) && !order.getToDate().isEmpty()){
				 dateFromString = DateTimeUtil.convertToStringFormat(order.getFromDate());
				 dateToString = DateTimeUtil.convertToStringFormat(order.getToDate());
				 query+=" and DATE_FORMAT(OM.order_date, '%m/%d/%Y')  between '"+dateFromString+"' and '"+dateToString+"'";
			 }
//		 String query = "Select OM.*,U.id,U.user_Name FROM order_master OM " +
//				 			"inner join user U on U.ID = OM.user_id limit "+from+" , "+to; 
			if(order.getStatus() != 0)
				query+=" and OM.status_id like '%"+order.getStatus()+"%'";
				
		 List<MyOrderMasterDetails> myOrder = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrderMasterDetails.class));
		 return myOrder;
				 
	 }
	 public List<OrderDetailSummary> getOrderDetailSummary(){
		 String query = "Select order_detail.*,P.id,P.name from order_detail "+
				 		" inner join product P on P.id = order_detail.product_id";
		 List<OrderDetailSummary> orderDetail = jdbcTemplate.query(query , new BeanPropertyRowMapper(OrderDetailSummary.class));
		 return orderDetail;
	 }
	 public boolean updateOrderDetailsWithNewProductPrice(Product product){
		 String updateQuery ="update order_detail set price="+product.getSpecialPrice()+" where price=0 and product_id="+product.getId();
		 System.out.println(updateQuery);
		  jdbcTemplate.execute(updateQuery);
		 return true;
	 }
	 public OrderMaster updateOrderMasterPrice(Product product){
		 String query = "select * from order_detail where product_Id ="+product.getId();
		 OrderDetail orderDetail  = (OrderDetail)jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper(OrderDetail.class));
		 
		 double totalPrice = 0;
		 totalPrice = orderDetail.getQuantity() * product.getSpecialPrice();
		 String updateQuery = "update order_master set total_price=total_price+"+totalPrice+"where id="+orderDetail.getOrderId();
		 jdbcTemplate.execute(updateQuery);
		
		 String getOrderById = "select * from order_master where id="+orderDetail.getOrderId();
		 OrderMaster orderMaster = (OrderMaster)jdbcTemplate.queryForObject(getOrderById, new BeanPropertyRowMapper(OrderMaster.class));
		 return orderMaster;
		 
	 }
	 
	 public List<MyOrder> orderPagination(int from,int to){
		 String query ="select OM.*,U.First_Name as User_Name,UE.PROFILE_IMAGE_URL,OS.description as status  from order_master OM"+
		 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
		 			" inner join user U on OM.USER_ID=U.ID"+
					" left join user_ext UE on OM.USER_ID=UE.USER_ID limit "+from+" , "+to;
		List<MyOrder> orders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		return orders; 
	 }
	 
	 public List<MyOrder> getMyOrdersPagination(long userId,int from,int to){
		 String query ="select OM.*,((SELECT ROUND(SUM(total_price), 2) FROM order_master where user_id="+userId +") - (SELECT ROUND(SUM(payment),2) FROM customer_payment where user_id="+userId+")) AS balance," +
		 			" OS.DESCRIPTION as STATUS  from order_master OM " +
		 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
		 			" where OM.USER_ID="+userId+" limit "+from+" ,"+to;
		List<MyOrder> myOrders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		System.out.println(JSONUtil.toJson(myOrders));
		return myOrders; 
	 }
	 
	 public List<MyOrder> searchOrders(String id,String items,String totalPrice,int status,String name,String fromDate,String toDate) throws ParseException{
		String dateFromString="";
		String dateToString="";
	
		 if(id == null)
			 id="";
		 if(items == null)
			 items="";
		 if(totalPrice == null)
			 totalPrice ="";
		 if(name == null)
			 name = "";
		 
		 System.out.println("Form Date"+fromDate+" id "+toDate);
		 String query ="select OM.*,U.First_Name as User_Name,UE.PROFILE_IMAGE_URL,OS.description as status  from order_master OM"+
				 			" inner join order_status OS on OM.STATUS_ID=OS.ID"+
				 			" inner join user U on OM.USER_ID=U.ID"+
		 					" left join user_ext UE on OM.USER_ID=UE.USER_ID";
		 query+=" where OM.id like '%"+id+"%' "
		 		+ " and OM.total_quantity like'%"+items+"%'"
		 		+ " and OM.total_price like '%"+totalPrice+"%'"
		 		+ " and U.first_name like '%"+name+"%'"; 
		
		 if(status != 0)
		 query+=" and OM.status_id like '%"+status+"%'";
		 
		 if(!fromDate.isEmpty() && !fromDate.equals(null) && toDate.isEmpty()){
			 dateFromString = DateTimeUtil.convertToStringFormat(fromDate);
			query+=" and DATE_FORMAT(OM.order_date, '%m/%d/%Y') >= '"+dateFromString+"'";
		 }
		 if(!fromDate.isEmpty() && !fromDate.equals(null) && !toDate.isEmpty()){
			 dateFromString = DateTimeUtil.convertToStringFormat(fromDate);
			 dateToString = DateTimeUtil.convertToStringFormat(toDate);
			 query+=" and DATE_FORMAT(OM.order_date, '%m/%d/%Y')  between '"+dateFromString+"' and '"+dateToString+"'";
		 }
 
		 List<MyOrder> orders  = jdbcTemplate.query(query, new BeanPropertyRowMapper(MyOrder.class));
		 return orders; 
	 }	 
	 
}
