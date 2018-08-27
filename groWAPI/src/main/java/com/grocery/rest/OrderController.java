package com.grocery.rest;

import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.cookie.Cookie;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.clib.service.email.EmailService;
import com.grocery.clib.service.email.EmailTemplateService;
import com.grocery.clib.util.EBIZUtil;
import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.CartRepository;
import com.grocery.dao.PrescriptionUploadsRepository;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;
import com.grocery.model.dbentity.Payment;
import com.grocery.model.dbentity.PaymentErrors;
import com.grocery.model.dbentity.PaymentInfo;
import com.grocery.model.dbentity.PaymentMessages;
import com.grocery.model.dbentity.PrescriptionUploads;
import com.grocery.model.dbentity.Product;
import com.grocery.model.dbentity.User;
import com.grocery.model.email.EmailMessage;
import com.grocery.model.order.MyOrder;
import com.grocery.model.order.MyOrdersPaginationRequest;
import com.grocery.model.order.OrderCalculation;
import com.grocery.model.order.OrderCalculationRequest;
import com.grocery.model.order.OrderCalculationResponse;
import com.grocery.model.order.OrderChangeRequest;
import com.grocery.model.order.OrderFilterByProduct;
import com.grocery.model.order.OrderFilterRequest;
import com.grocery.model.order.OrderIdRequest;
import com.grocery.model.order.OrderResponse;
import com.grocery.model.order.OrdersResponse;
import com.grocery.model.order.PlaceOrderRequest;
import com.grocery.model.order.SearchOrdersRequest;
import com.grocery.model.payment.ChargeCreditCard;
import com.grocery.model.payment.CreditCardRequest;
import com.grocery.model.payment.TranscationSuccess;
import com.grocery.model.payment.TranscationSuccessResponse;
import com.grocery.service.DownloadService;
import com.grocery.service.OrderService;
import com.grocery.service.PaymentService;
import com.grocery.service.ProductService;
import com.grocery.service.UserMgmtService;

import net.authorize.api.contract.v1.TransactionResponse.Errors.Error;
import net.authorize.api.contract.v1.TransactionResponse.Messages;
import net.authorize.api.contract.v1.TransactionResponse.Messages.Message;
import net.authorize.util.StringUtils;

@RestController
@RequestMapping("/order")
@CrossOrigin( maxAge = 3600)
public class OrderController {
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private EmailTemplateService emailTemplateService;
	@Autowired
	private EmailService emailService;
	@Autowired
	private UserMgmtService userMgmtService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartRepository cartRepository;
	@Autowired
	private PrescriptionUploadsRepository prescriptionUploadsRepository;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private DownloadService downloadService;
	
	@RequestMapping("/")
	public String home() {
		return "Order";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/placeOrder")
	public OrderResponse placeOrder(@RequestBody PlaceOrderRequest request) {
		OrderResponse response = new OrderResponse();
	
		try {
		
			OrderMaster retOrder  = orderService.placeOrder(request);
			System.out.println("JSONUtil"+JSONUtil.toJson(retOrder) );

			response = orderService.getOrderById(retOrder.getId());
			System.out.println("93"+JSONUtil.toJson(response));
			User user = new User();
			user.setId(request.getUserId());
			user = userMgmtService.getUserById(user.getId());
			Map<String,Object> map = new HashMap<String,Object>();			
		    map.put("order", response.getOrder());
		    map.put("user", user);
		    map.put("ship", 1);
			String subject= "Your order has placed";
			String emailBody = null;
			if(request.getShippingAddressId() != 0 )
				emailBody = emailTemplateService.getEmailTemplate("OrderSummary.vm",map);
			else
				emailBody = emailTemplateService.getEmailTemplate("OrderSummaryWithoutShipping.vm", map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			logger.info("Place Order ", response);
		} catch (Exception e) {
			logger.error("Place Order", e);
			response.setSuccess(false);
			
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/getOrderById/{orderId}")
	public OrderResponse getOrderById(@PathVariable long orderId) {
		OrderResponse response = new OrderResponse();
		try {
			response = orderService.getOrderById(orderId);
			logger.info("getMyOrder ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("getMyOrder", e);
			response.setSuccess(false);
		}		
		
		return response;
	}	
	@RequestMapping(method = RequestMethod.GET, value = "/getMyOrders/{userId}")
	public OrdersResponse getMyOrders(@PathVariable long userId,HttpServletRequest servletRequest) {
		OrdersResponse response = new OrdersResponse();
		try {
			
			List<MyOrder> orders = orderService.getMyOrders(userId);
			response.setOrders(orders);
			logger.info("getMyOrders ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("getMyOrders", e);
			response.setSuccess(false);
		}		
		
		return response;
	}	
	@RequestMapping(method = RequestMethod.GET, value = "/getOrders")
	public OrdersResponse getOrders() {
		OrdersResponse response = new OrdersResponse();
		try {
			List<MyOrder> orders = orderService.getOrders();
			List<MyOrder> getCount = orderService.getCount();
			response.setOrders(orders);
			response.setCount(getCount.size());
			logger.info("getMyOrders ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("getMyOrders", e);
			response.setSuccess(false);
		}		
		
		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/getOrderByFilter")
	public OrdersResponse getOrderByFilter(@RequestBody OrderFilterRequest request){
		OrdersResponse response = new OrdersResponse();
		try{
			System.out.println(request.getSearchBy());
			System.out.println(request.getSearchValue());
			if(request.getSearchBy().equals("product")){
				
				List<OrderFilterByProduct> orders = orderService.getOrderFilterByProduct(request);
				response.setOrderFilterProduct(orders);
			}
			else{
			List<MyOrder> orders = orderService.getOrderByFilter(request);
			response.setOrders(orders);
			logger.info("getOrderByFilter",JSONUtil.toJson(response));
			}
			int count;
			
			}
		catch(Exception e){
			logger.error("getOrderByFilter Failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/changeOrder")
	public SuccessIDResponse changeOrder(@RequestBody OrderChangeRequest request) {
		SuccessIDResponse response = new SuccessIDResponse();
	
		try {
			orderService.changeOrder(request);
			User user = new User();
			user.setId(request.getOrder().getUserId());
			user = userMgmtService.getUserById(user.getId());
			OrderResponse order = orderService.getOrderById(request.getOrder().getId());
			Map<String,Object> map = new HashMap<String,Object>();			
			map.put("order", order.getOrder());
			map.put("user", user);
		//	map.put("product", product);
			String subject= "Your order has changed";
			String emailBody = emailTemplateService.getEmailTemplate("changeOrderSummary.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
			//emailService.send2EmailQueue(emailMessage);
			logger.info("changeOrder ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("changeOrder ", e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/copyOldOrder/{orderId}")
	public SuccessIDResponse copyOldOrder(@PathVariable long orderId){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			OrderMaster orderMaster = orderService.copyOldOrder(orderId);
			OrderResponse order = orderService.getOrderById(orderId);
			User user = userMgmtService.getUserById(orderMaster.getUserId());
			Map<String,Object> map = new HashMap<String,Object>();			
			map.put("order", order.getOrder());
			map.put("user", user);
		//	map.put("product", product);
			String subject= "Your order has been placed";
			String emailBody = emailTemplateService.getEmailTemplate("OrderSummary.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.sendEmail(user.getEmail(), subject, emailBody);
		//	emailService.send2EmailQueue(emailMessage);
			response.isSuccess();
			response.setId(orderMaster.getId());
		}
		catch(Exception e){
			logger.error("copyOrder Failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/getOrderPagination/{page}")
	public OrdersResponse getOrderPagination(@PathVariable int page) {
		OrdersResponse response = new OrdersResponse();
		try {
			int from=1;
			int to=10;
			for(int i=1;i<=page;i++){
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
			List<MyOrder> orders = orderService.orderPagination(from, to);
			response.setOrders(orders);
			logger.info("getMyOrders ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("getMyOrders", e);
			response.setSuccess(false);
		}		
		
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value ="/getMyOdersPagination")
	public OrdersResponse getMyOrdersPagination(@RequestBody MyOrdersPaginationRequest  request) {
		OrdersResponse response = new OrdersResponse();
		try {
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
			List<MyOrder> orders = orderService.getMyOrdersPagination(request.getUserId(),from,to);
			response.setOrders(orders);
			logger.info("getMyOrders ", JSONUtil.toJson(response));
		} catch (Exception e) {
			logger.error("getMyOrders", e);
			response.setSuccess(false);
		}		
		
		return response;
	}	 
	
	@RequestMapping(method = RequestMethod.POST, value = "/payByCredit")
	public TranscationSuccessResponse payByCredit(@RequestBody CreditCardRequest request){
		TranscationSuccessResponse response = new TranscationSuccessResponse();
		try{
			 ChargeCreditCard credit = new ChargeCreditCard();
			 System.out.println("@@Co ming.."+JSONUtil.toJson(request));
			 String accountNumber = request.getMakePayment().getCardNumber();
			 String numbers = org.apache.commons.lang.StringUtils.right( accountNumber, 4 );
			 TranscationSuccess success = new TranscationSuccess();
			 response.setAccountNo("XXXX"+numbers);

			 PaymentInfo  paymentInfo = new PaymentInfo();
			 paymentInfo.setAccountId(response.getAccountNo());
			 paymentInfo.setUserId(request.getPlaceOrder().getUserId());
			 paymentInfo.setRefId(UUID.randomUUID().toString());
			 paymentInfo.setPaymentRequest("Timed Out");
			 paymentInfo.setPaymentDate(new Date());
			 paymentService.savePaymentInfo(paymentInfo);
			 
			 PaymentMessages paymentMessages = new PaymentMessages();
			 PaymentErrors paymentErrors = new PaymentErrors();
			 Payment paymentRecords = new Payment();
			 try{			 
			 success = credit.getPayment(request.getMakePayment(),paymentInfo.getRefId());
			 System.out.println("check the controller response "+JSONUtil.toJson(success.getPayment()));
			 if(success.isSuccess())
			 {
				  paymentRecords = paymentService.savePayment(success.getPayment());
				 for(Message messages : success.getMessages().getMessage()){
					 paymentMessages.setCode(messages.getCode());
					 paymentMessages.setDescription(messages.getDescription());
					 paymentMessages.setPaymentId(paymentRecords.getId());
					 System.out.println("Messages add to database");
					 paymentService.savePaymentMessages(paymentMessages);
				 }
				
				 OrderController controller = new OrderController();
			//	 OrderMaster retOrder  = orderService.placeOrder(request.getPlaceOrder());
				 OrderResponse orderResponse = new OrderResponse();
				 OrderMaster retOrder  = orderService.placeOrder(request.getPlaceOrder());
				 retOrder.setCardNo(response.getAccountNo());
				 System.out.println("order master "+JSONUtil.toJson(retOrder));
				 orderResponse = orderService.getOrderById(retOrder.getId());
				 System.out.println("order Response "+JSONUtil.toJson(orderResponse));
				 response.setOrderResponse(orderResponse);
				 paymentInfo.setAmount(String.valueOf(retOrder.getTotalPrice()));
				 paymentInfo.setPaymentRequest("Completed");
				 paymentInfo.setPaymentId(paymentRecords.getId());
				 paymentService.savePaymentInfo(paymentInfo);
				 
					User user = new User();
					user.setId(request.getPlaceOrder().getUserId());
					user = userMgmtService.getUserById(user.getId());
					Map<String,Object> map = new HashMap<String,Object>();			
				    map.put("order", orderResponse.getOrder());
				    map.put("user", user);
					String subject= "Your order has placed";
					String emailBody;
					if(request.getPlaceOrder().getShippingAddressId() != 0 )
						emailBody = emailTemplateService.getEmailTemplate("OrderSummary.vm",map);
					else
						emailBody = emailTemplateService.getEmailTemplate("OrderSummaryWithoutShipping.vm", map);
					EmailMessage emailMessage = new EmailMessage();
					emailMessage.setToEmail(user.getEmail());
					emailMessage.setSubject(subject);
					emailMessage.setEmailBody(emailBody);
					emailService.sendEmail(user.getEmail(), subject, emailBody);
							
			//	 response.setTranscation(success);
			//	 System.out.println("Success");
			 }
			 else{
				 paymentRecords = paymentService.savePayment(success.getPayment());
				 
				 paymentInfo.setAmount("0.00");
				 paymentInfo.setPaymentRequest("Failed");
				 paymentInfo.setPaymentId(paymentRecords.getId());
				 paymentService.savePaymentInfo(paymentInfo);
				 success.setSuccess(false);
				 System.out.println("failure");
				 response.setSuccess(false);
			 }
				
			 }
			 catch(Exception e){
			  logger.error("payment ",e);
			  response.setSuccess(false);
			 }
			 
			
		}
		catch(Exception e){
			logger.error("Failed ",e);
			 response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/orderCalculation")
	 public OrderCalculationResponse getOrderCalculation(@RequestBody OrderCalculationRequest  request){
		OrderCalculationResponse response = new OrderCalculationResponse();
		try{
			OrderCalculation orderCalculation = orderService.getOrderCalculation(request.getCity(),request.getUserId(),request.getShippingNeed());
			response.setOrderCalculation(orderCalculation);
			logger.info("Calculation Success ");
		}
		catch(Exception e){
			logger.error("Failed ",e);
			response.setSuccess(false);
		}
		return response;
	 }
	
	@RequestMapping(method = RequestMethod.POST, value="/searchOrders")
	public OrdersResponse searchOrders(@RequestBody SearchOrdersRequest request){
		OrdersResponse response = new OrdersResponse();
		try{
			List<MyOrder> ordersList = orderService.searchOrders(request.getSearchDetail());
			response.setOrders(ordersList);
			logger.info("Search Order List ");
		}
		catch(Exception e){
			logger.error("Search Order List Failed ",e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/getXls")
	   public void xls(HttpServletResponse response, Model model,@RequestBody SearchOrdersRequest request){
		
		   try{
			   System.out.println("@@@ Coming");
			   XSSFWorkbook workbook = downloadService.downloadexcels(request.getSearchDetail());
		    	
		    	response.setContentType("text/xls");
	            String disposition = "attachment; fileName=CustomerOrders.xlsx";
	            response.setHeader("Content-Disposition", disposition);
		    	OutputStream out = response.getOutputStream();
		    	workbook.write(out);
		    	out.close();
		    	 System.out.println("@@@ Coming"+response.getOutputStream());
		    	response.getOutputStream();
		   }
		   catch(Exception e){
			   
		   }
	   }
	@RequestMapping(method = RequestMethod.POST, value = "/cancelOrder")
	public SuccessIDResponse cancelOrder(@RequestBody OrderIdRequest request){
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			OrderMaster order = orderService.getOrderMasterById(request.getId());
			order.setStatusId(9);
			orderService.saveOrderMaster(order);
			logger.info("order cancelled");
		}
		catch(Exception e){
			logger.error("order not cancelled",e);
			response.setSuccess(false);
		}
		return response;
	}
}