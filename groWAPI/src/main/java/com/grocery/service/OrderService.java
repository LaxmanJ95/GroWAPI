package com.grocery.service;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.AddressRepository;
import com.grocery.dao.OrderDetailRepository;
import com.grocery.dao.OrderMasterRepository;
import com.grocery.dao.OrderQuery;
import com.grocery.dao.PrescriptionUploadsRepository;
import com.grocery.dao.UserQuery;
import com.grocery.model.cart.CartTotal;
import com.grocery.model.cart.ViewCart;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;
import com.grocery.model.dbentity.PrescriptionUploads;
import com.grocery.model.dbentity.Product;
import com.grocery.model.dbentity.ShippingHandling;
import com.grocery.model.dbentity.Tax;
import com.grocery.model.dbentity.UserExt;
import com.grocery.model.order.MyOrder;
import com.grocery.model.order.MyOrderDetail;
import com.grocery.model.order.OrderCalculation;
import com.grocery.model.order.OrderCalculationRequest;
import com.grocery.model.order.OrderChangeRequest;
import com.grocery.model.order.OrderFilterByProduct;
import com.grocery.model.order.OrderFilterRequest;
import com.grocery.model.order.OrderResponse;
import com.grocery.model.order.PlaceOrderRequest;
import com.grocery.model.order.SearchOrder;

@Service
@Transactional
public class OrderService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Autowired
	private OrderMasterRepository orderMasterRepository;
	@Autowired
	private UserQuery addressQuery;
	@Autowired
	private AddressRepository addressRespository;
	@Autowired
	private OrderQuery orderQuery;
	@Autowired
	private  PrescriptionUploadsRepository prescriptionUploadsRepository;
	@Autowired
	private CartService cartService;
	@Autowired
	private UserProfileService userProfileService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CityStateService cityStateService;
	@Autowired
	private UserMgmtService userMgmtService;

	public OrderService() {
		// this.userRepository = userRepository;
	}

	
	public List<MyOrder> getMyOrders(long userId) throws Exception{
		List<MyOrder> myOrders = orderQuery.getMyOrders(userId);
		return myOrders;
	}
	
	public List<MyOrder> getOrders() throws Exception{
		List<MyOrder> myOrders = orderQuery.getOrders();
		return myOrders;
	}
	public List<MyOrder> getCount(){
		List<MyOrder> myOrders = orderQuery.getCount();
		return myOrders;
	}
	public List<MyOrder> getOrderByFilter(OrderFilterRequest request){
		List<MyOrder> myOrders = orderQuery.getOrderByFilter(request.getSearchBy(), request.getSearchValue(),request.getRecordFrom(),request.getRecordTo());
				return myOrders;
	}
	
	public List<OrderFilterByProduct> getOrderFilterByProduct(OrderFilterRequest request){
		List<OrderFilterByProduct> myOrders = orderQuery.getOrderFilterByProduct(request.getSearchValue(),request.getRecordFrom(),request.getRecordTo());
				return myOrders;
	}
	
    public List<OrderDetail> getOrderDetailByOrderId(long id) throws Exception{
    	List<OrderDetail> order = orderDetailRepository.findByOrderId(id);
    	return order;
    }
	public OrderResponse getOrderById(long orderId) throws Exception {
		OrderResponse response = new OrderResponse();
		System.out.println("orderId orderId "+orderId);
		MyOrder myOrder = orderQuery.getMyOrder(orderId);
		if(myOrder!=null){
			if(myOrder.getShippingAddressId() != 0){
			Address shippingAddress = addressRespository.findOne(myOrder.getShippingAddressId());
			myOrder.setShippingAddress(shippingAddress);
			}
			Address billingAddress = null;
			if(myOrder.getBillingAddressId() != 0){
				billingAddress = userMgmtService.getAddressById(myOrder.getBillingAddressId());
				myOrder.setBillingAddress(billingAddress);
			}
			else{
				billingAddress = userMgmtService.getAddress(myOrder.getUserId(), 0);
				myOrder.setBillingAddress(billingAddress);
			}	
			System.out.println(JSONUtil.toJson(billingAddress));
			List<MyOrderDetail> orderDetails = orderQuery.getMyOrderDetail(myOrder.getId());
			myOrder.setOrderDetail(orderDetails);
		}
		response.setOrder(myOrder);
		return response;
	}

	public OrderMaster placeOrder(PlaceOrderRequest request) throws Exception {

		System.out.println("inside  "+request.getBillingAddressId()+" "+request.getShippingAddressId());
		List<ViewCart> cart = cartService.viewMyCart(request.getUserId());
		CartTotal cartTotal = cartService.getCartCount(request.getUserId());
		Address address = userMgmtService.getAddress(request.getUserId(), 0);
		List<Cart>  cartList = cartService.getCartByUserId(request.getUserId());
		Address shippingAddress = null;
		double total_price_order = 0;double tax =0 ;double shipping_rate =0.00;double taxAmount=0;
		double finalPrice=0;
		double totalPrice=0;
		double price;
		DecimalFormat df = new DecimalFormat("#.00");
		Tax taxRate= null;
		if(request.getShippingAddressId() != 0){
			System.out.println(" Shiiping address id not equal to 0");
			shippingAddress = userMgmtService.getAddressById(request.getShippingAddressId());
			taxRate = cityStateService.getTaxRateByCity(shippingAddress.getCity());
			if(taxRate == null){
				taxRate = cityStateService.getTaxRateByCity("Default");
			}
			ShippingHandling shippingRate = cityStateService.getShippingRateByCity(shippingAddress.getCity());
			if(shippingRate == null)
				shippingRate =  cityStateService.getShippingRateByCity("Default");
			
			
			tax = taxRate.getTaxRate();
			shipping_rate = Double.parseDouble(shippingRate.getShippingRate());
			System.out.println(JSONUtil.toJson(cartList));
			for(Cart cartOpen : cartList){
				price= cartOpen.getQuantity() * cartOpen.getPrice();
				totalPrice+=price;
				System.out.println("totlPrice : "+price);
				Product product = productService.getProductById(cartOpen.getProductId());
				if(product.getTaxable() == 1){
					taxAmount+=(price * tax)/100;
					System.out.println("taxAmount : "+taxAmount);
				}
				else{
					taxAmount+=0;
				}
			}
			finalPrice = totalPrice + taxAmount;
			total_price_order = finalPrice;			
		    String total_price = df.format(total_price_order);
		}
		else{
			taxRate = cityStateService.getTaxRateByCity(address.getCity());
			if(taxRate == null){
				taxRate = cityStateService.getTaxRateByCity("Default");
			}
			tax = taxRate.getTaxRate();
			for(Cart cartOpen : cartList){
				price= cartOpen.getQuantity() * cartOpen.getPrice();
				totalPrice+=price;
				System.out.println("totlPrice : "+price);
				Product product = productService.getProductById(cartOpen.getProductId());
				if(product.getTaxable() == 1){
					taxAmount+=(price * tax)/100;
					System.out.println("taxAmount : "+taxAmount);
				}
				else{
					taxAmount+=0;
				}
			}
		}
		
		OrderMaster retOrder=null;
		if (cart.size() > 0) {
			OrderMaster order = new OrderMaster();
			if(request.getBillingAddressId() != 0)
				order.setBillingAddressId(request.getBillingAddressId());
			else{
				
				order.setBillingAddressId(address.getId());
			}
			if(request.getShippingAddressId() != 0){
				order.setShippingAddressId(request.getShippingAddressId());
				double total = total_price_order + shipping_rate;
				order.setTotalPrice(String.valueOf(total));
				
				System.out.println("e"+shipping_rate);
				order.setShippingCost(String.valueOf(shipping_rate));
			}
			else{
				double tax_final = taxAmount + Double.parseDouble(cartTotal.getTotalPrice());
				order.setTotalPrice(String.valueOf(tax_final));
			}
			order.setPaymentMethod(request.getPaymentMethod());
			order.setUserId(request.getUserId());
			order.setOrderDate(new Date());
			order.setStatusId(1);
			
			order.setTax(Double.parseDouble(df.format(taxAmount)));
			order.setTotalQuantity(cartTotal.getTotalQuantity());
			order.setDiscountPercent(cartTotal.getDiscount());
			order.setFinalPrice(cartTotal.getFinalPrice());
		//	order.setTotalPrice(cartTotal.getTotalPrice());
			System.out.println("CartTotal:"+JSONUtil.toJson(order));
		    retOrder = orderMasterRepository.save(order);
System.out.println("%%#@%%$%$%"+order.getOrderDate());
			for (ViewCart cartItem : cart) {
				if(cartItem.getPresOrder()==1){
					List<PrescriptionUploads> prescriptionUploads = prescriptionUploadsRepository.findAllByCartId(cartItem.getId());
					for (PrescriptionUploads pres: prescriptionUploads){
						pres.setOrderId(retOrder.getId());
						prescriptionUploadsRepository.save(pres);
					}
				}
				OrderDetail orderDetail = new OrderDetail();
				orderDetail.setOrderId(retOrder.getId());
				orderDetail.setProductId(cartItem.getProductId());
				orderDetail.setPrice(cartItem.getPrice());
				orderDetail.setStatusId(1);
				orderDetail.setUserId(request.getUserId());
				orderDetail.setQuantity(cartItem.getQuantity());
				orderDetail.setCartId(cartItem.getId());
				orderDetailRepository.save(orderDetail);
			
			}
			cartService.deleteByUserId(request.getUserId());
		}
		return retOrder;

	}
	public boolean changeOrder(OrderChangeRequest request) throws Exception {
		int totalQuantity=0;
		double totalPrice=0;
		double finalPrice=0;double tax = 0;double shippingCost = 0;
		double discountAmount=0;
		System.out.println("@@@ORDER ID.."+request.getOrder().getId());
		OrderMaster order = orderMasterRepository.findOne(request.getOrder().getId());
		if(request.getOrder().getShippingAddress() != null){
			addressRespository.save(request.getOrder().getShippingAddress());
		
		Address address = userMgmtService.getAddressById(request.getOrder().getShippingAddress().getId());
		
		ShippingHandling shippingRate = cityStateService.getShippingRateByCity(address.getCity());
		if(shippingRate == null)
			shippingRate =  cityStateService.getShippingRateByCity("Default");
		
		shippingCost = Double.parseDouble(shippingRate.getShippingRate());
		}
		
		for(OrderDetail orderDetail: request.getOrder().getOrderDetail()){
			totalQuantity=totalQuantity+orderDetail.getQuantity();
			totalPrice+=(orderDetail.getQuantity() * orderDetail.getPrice());
			System.out.println("ordersss@@@@@ "+JSONUtil.toJson(orderDetail));
			orderDetailRepository.save(orderDetail);
		}
		
		if(order!=null){
			if(request.getOrder().getShippingAddress() != null)
				shippingCost = Double.parseDouble(order.getShippingCost());
			
			order.setStatusId(request.getOrder().getStatusId());
			order.setTotalQuantity(totalQuantity);
			double total = totalPrice + order.getTax() + shippingCost;
			order.setTotalPrice(String.valueOf(total));
			discountAmount = total * order.getDiscountPercent()/100;
			finalPrice = total - discountAmount;
			System.out.println(finalPrice);
			order.setFinalPrice(finalPrice);
			orderMasterRepository.save(order);
		}else{
			return false;
		}
		return true;
	}
	public OrderMaster copyOldOrder(long orderId) throws Exception {
		OrderMaster orderMaster = orderMasterRepository.findById(orderId);
		OrderMaster retOrder=null;
			double finalPrice,discountAmount;
			
			OrderMaster order = new OrderMaster();
			order.setBillingAddressId(orderMaster.getBillingAddressId());
			order.setShippingAddressId(orderMaster.getShippingAddressId());
			order.setPaymentMethod(orderMaster.getPaymentMethod());
			order.setUserId(orderMaster.getUserId());
			order.setOrderDate(new Date());
			order.setStatusId(2);
			order.setTotalPrice(orderMaster.getTotalPrice());
			order.setTotalQuantity(orderMaster.getTotalQuantity());
			order.setShippingCost(orderMaster.getShippingCost());
			order.setTax(orderMaster.getTax());
//			UserExt userext = userProfileService.getUserProfileByUserId(orderMaster.getUserId());
//			System.out.println(JSONUtil.toJson(userext));
//			if(userext == null){
				retOrder = orderMasterRepository.save(order);
	//		}
	//		else{
			///	order.setDiscountPercent(userext.getDiscountPercent());
//				double total =  Double.parseDouble(order.getTotalPrice());
//				discountAmount = total * order.getDiscountPercent()/100;
//				finalPrice = total - discountAmount;
	//			order.setFinalPrice(finalPrice);
		   retOrder = orderMasterRepository.save(order);
	//		}
System.out.println("%%#@%%$%$%"+JSONUtil.toJson(order));
		
				List<OrderDetail> orderDetails = orderDetailRepository.findByOrderId(orderId);
				for(OrderDetail orders : orderDetails){
					OrderDetail orderDetail = new OrderDetail();
					orderDetail.setOrderId(retOrder.getId());
					orderDetail.setPrice(orders.getPrice());
					orderDetail.setProductId(orders.getProductId());
					orderDetail.setCartId(orders.getCartId());
					orderDetail.setQuantity(orders.getQuantity());
					orderDetail.setStatusId(2);
					orderDetail.setUserId(retOrder.getUserId());
					orderDetailRepository.save(orderDetail);
			}
				
//			List<PrescriptionUploads> presciptionUploads = prescriptionUploadsRepository.findByOrderId(orderId);
//			for(PrescriptionUploads pres : presciptionUploads){
//				System.out.println("@@@@@@ "+JSONUtil.toJson(pres));
//				PrescriptionUploads prescription = new PrescriptionUploads();
//				prescription.setCartId(pres.getCartId());
//				prescription.setFilePath(pres.getFilePath());
//				prescription.setOrderId(retOrder.getId());
//				prescription.setUploadedDate(new Date());
//				prescriptionUploadsRepository.save(prescription);
//		}
		return retOrder;
	}
	
	public List<MyOrder> orderPagination(int from,int to){
		return this.orderQuery.orderPagination(from, to);
	}
	public List<MyOrder> getMyOrdersPagination(long userId,int from,int to){
		return this.orderQuery.getMyOrdersPagination(userId, from, to);
	}
	
	public OrderCalculation getOrderCalculation(String city,int userId,int shippingNeed){
		OrderCalculation orderCalculation = new OrderCalculation();
		try{
			System.out.println("@@@@@ &&& "+city+" "+userId);
			Tax taxRate = cityStateService.getTaxRateByCity(city);
			if(taxRate == null){
				taxRate = cityStateService.getTaxRateByCity("Default");
			}
			ShippingHandling shippingRate = cityStateService.getShippingRateByCity(city);
			if(shippingRate == null)
				shippingRate =  cityStateService.getShippingRateByCity("Default");
			List<Cart>  cartList = cartService.getCartByUserId(userId);
			
			double taxAmount=0;
			double tax = taxRate.getTaxRate();
			double finalPrice=0;
			double totalPrice=0;
			double price;
			System.out.println(JSONUtil.toJson(cartList));
			for(Cart cartOpen : cartList){
				price= cartOpen.getQuantity() * cartOpen.getPrice();
				totalPrice+=price;
				System.out.println("totlPrice : "+price);
				Product product = productService.getProductById(cartOpen.getProductId());
				if(product.getTaxable() == 1){
					taxAmount+=(price * tax)/100;
					System.out.println("taxAmount : "+taxAmount);
				}
				else{
					taxAmount+=0;
				}
			}
			finalPrice = totalPrice + taxAmount;
			
			orderCalculation.setShippingRate(Double.parseDouble(shippingRate.getShippingRate()));
			System.out.println("finalPrice : "+finalPrice);
			if(shippingNeed != 0)
				orderCalculation.setTotalPrice(finalPrice + orderCalculation.getShippingRate());
			else
				orderCalculation.setTotalPrice(finalPrice);
			orderCalculation.setPrice(totalPrice);
			orderCalculation.setTax(taxAmount);
		}
		catch(Exception e){
			System.out.println("error"+e);
		}
		return orderCalculation;
	}
	
	public List<MyOrder> searchOrders(SearchOrder order) throws ParseException{
		return this.orderQuery.searchOrders(order.getId(),order.getTotalItems(),order.getTotalPrice(),
				order.getStatus(),order.getName(),order.getFromDate(),order.getToDate());
	}
	
	public OrderMaster getOrderMasterById(long id){
		return this.orderMasterRepository.findOne(id);
	}
	
	public OrderMaster saveOrderMaster(OrderMaster order){
		return this.orderMasterRepository.save(order);
	}
}
