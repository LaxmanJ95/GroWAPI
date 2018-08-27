package com.grocery.rest;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.clib.util.JSONUtil;
import com.grocery.clib.util.UploadUtil;
import com.grocery.dao.CartQuery;
import com.grocery.dao.CartRepository;
import com.grocery.dao.PrescriptionUploadsRepository;
import com.grocery.model.cart.Add2CartRequest;
import com.grocery.model.cart.CartCountResponse;
import com.grocery.model.cart.CartTotal;
import com.grocery.model.cart.SaveCartRequest;
import com.grocery.model.cart.SaveCartResponse;
import com.grocery.model.cart.UpdatePrescriptionFilesRequest;
import com.grocery.model.cart.UpdateQuantityRequest;
import com.grocery.model.cart.ViewCart;
import com.grocery.model.cart.ViewMyCartResponse;
import com.grocery.model.dbentity.Cart;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.PrescriptionUploads;
import com.grocery.model.dbentity.Product;
import com.grocery.model.upload.DeleteFileRequest;
import com.grocery.service.CartService;
import com.grocery.service.OrderService;
import com.grocery.service.ProductService;
import com.grocery.service.WishListService;

@RestController
@RequestMapping("/cart")
@CrossOrigin(maxAge = 3600)
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartRepository cartRepository;
	@Autowired
	private PrescriptionUploadsRepository prescriptionUploadsRepository;
	@Autowired
	private CartQuery cartQuery;
	@Autowired
	private WishListService wishListService;
	
	@RequestMapping("/")
	public String home() {
		return "Cart";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/add2Cart")
	public SaveCartResponse add2Cart(@RequestBody SaveCartRequest request) {
		SaveCartResponse response = new SaveCartResponse();

		try {
			CartTotal cartTotal = cartService.add2Cart(request);
			response.setCartTotal(cartTotal);
			logger.info("Cart ", response);
		} catch (Exception e) {
			logger.error("searchProduct", e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/add2CartById")
	public SaveCartResponse add2CartById(@RequestBody Add2CartRequest request){
		SaveCartResponse response = new SaveCartResponse();
		try{
			System.out.println(""+JSONUtil.toJson(request));
			Product product = productService.getProduct(request.getProductId());
			Cart cart = new Cart();
			cart.setPrice(Double.parseDouble(product.getCostPrice()));
			cart.setProductId(product.getId());
			cart.setQuantity(request.getQuantity());
			cart.setUserId(request.getUserId());
			cartService.save2Cart(cart);
			CartTotal cartTotal = cartService.getCartCount(request.getUserId());
			response.setCartTotal(cartTotal);
			System.out.println(""+JSONUtil.toJson(cartTotal));
			//wishListService.deleteById(request.getWishListId());
			logger.info("add2  cart");			
		}
		catch(Exception e){
			logger.error("add cart failed",e);
			response.setSuccess(false);
		}
		return response;
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/add2CartFromOldOrder/{orderId}")
	public SaveCartResponse add2CartFromOldOrder(@PathVariable long orderId) {
		SaveCartResponse response = new SaveCartResponse();
		try {
			List<OrderDetail> orderDetails = orderService.getOrderDetailByOrderId(orderId);
			for (OrderDetail orderDetail : orderDetails) {
				Product product = productService.getProductById(orderDetail.getProductId());
				Cart newCart = new Cart();
				newCart.setUserId(orderDetail.getUserId());
				newCart.setQuantity(orderDetail.getQuantity());
				newCart.setProductId(orderDetail.getProductId());
				newCart.setPrice(Double.parseDouble(product.getCostPrice()));
				if (orderDetail.getProductId() == 1)
					newCart.setPresOrder(1);
				else
					newCart.setPresOrder(0);
				Cart savedCart = cartRepository.save(newCart);
				CartTotal cartTotal = cartQuery.getCartCount(orderDetail.getUserId());
				System.out.println("Orders :" + JSONUtil.toJson(savedCart));
				if (orderDetail.getProductId() == 1) {
					List<PrescriptionUploads> prescription = prescriptionUploadsRepository.findByCartId(orderDetail.getCartId());
					for (PrescriptionUploads files : prescription) {
						System.out.println("Prescription :" + JSONUtil.toJson(prescription));
						PrescriptionUploads prescriptionUploads = new PrescriptionUploads();
						prescriptionUploads.setFilePath(files.getFilePath());
						prescriptionUploads.setCartId(savedCart.getId());
						prescriptionUploadsRepository.save(prescriptionUploads);
					}
				}
				response.setCartTotal(cartTotal);
			}
		} catch (Exception e) {
			logger.error("add2CartFromOldOrder failed", e);
			response.setSuccess(false);
		}

		return response;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/viewMyCart/{userId}")
	public ViewMyCartResponse viewMyCart(@PathVariable long userId) {
		ViewMyCartResponse response = new ViewMyCartResponse();
		try {
			List<ViewCart> cart = cartService.viewMyCart(userId);
			response.setCart(cart);
			CartTotal cartTotal = cartService.getCartCount(userId);
			response.setCartTotal(cartTotal);

			logger.info("View My Cart ", response);
		} catch (Exception e) {
			logger.error("View My Cart", e);
			response.setSuccess(false);
		}

		return response;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/getCartCount/{userId}")
	public CartCountResponse getCartCount(@PathVariable long userId) {
		CartCountResponse response = new CartCountResponse();
		try {

			CartTotal cartTotal = cartService.getCartCount(userId);
			response.setCartTotal(cartTotal);

			logger.info("getCartCount", response);
		} catch (Exception e) {
			logger.error("getCartCount failed", e);
			response.setSuccess(false);
		}

		return response;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/updateQuantity")
	public SuccessIDResponse updateQuantity(@RequestBody UpdateQuantityRequest request) {
		cartService.updateQuantity(request.getCartId(), request.getQuantity());
		return new SuccessIDResponse();
	}

	@RequestMapping(method = RequestMethod.POST, value = "/updateUploadedFiles")
	public SuccessIDResponse addPrescriptionFiles(@RequestBody UpdatePrescriptionFilesRequest request) {
		// cartService.updateQuantity(request.getCartId(),
		// request.getQuantity());
		cartService.deletePrescriptionFiles(request.getCartId());
		cartService.updatePrescriptionFiles(request.getCartId(), request.getUploadedFiles());
		return new SuccessIDResponse();
	}
	 @RequestMapping(method = RequestMethod.POST, value="/deleteUploadedFiles")
	    @ResponseBody
	    public SuccessIDResponse deleteUploadedFiles(@RequestBody DeleteFileRequest request) throws IOException {
		 SuccessIDResponse response = new SuccessIDResponse();
		 String baseUploadDIR = UploadUtil.getBaseUploadDirectory();
		 File file = new File(baseUploadDIR+"/"+request.getFilePath());
		 System.out.println("Files to be deleted.."+file.getAbsolutePath());
		 boolean ret=false;
		 if(file.exists()){
			  ret = file.delete();
		 }
		 if(!ret){
			 cartService.deleteUploadedFilesByFilePath(request.getFilePath());
		 }else{
			 response.setUserErrorMsg("File not deleted!");
			 response.setSuccess(false);
			 
		 }
		 return response;
	 	}
	 
}