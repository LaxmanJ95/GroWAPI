package com.grocery.rest;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.grocery.clib.model.BaseResponse;
import com.grocery.clib.model.SuccessIDResponse;
import com.grocery.clib.service.email.EmailService;
import com.grocery.clib.service.email.EmailTemplateService;
import com.grocery.clib.util.JSONUtil;
import com.grocery.clib.util.UploadUtil;
import com.grocery.dao.OrderQuery;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.OrderMaster;
import com.grocery.model.dbentity.Product;
import com.grocery.model.dbentity.User;
import com.grocery.model.email.EmailMessage;
import com.grocery.model.order.MyOrder;
import com.grocery.model.order.OrderResponse;
import com.grocery.model.payment.ChargeCreditCard;
import com.grocery.model.product.AddProductRequest;
import com.grocery.model.product.CategoriesResponse;
import com.grocery.model.product.GetProductResponse;
import com.grocery.model.product.ProductCategories;
import com.grocery.model.product.SearchProductRequest;
import com.grocery.model.product.SearchProductResponse;
import com.grocery.model.product.SubCategoryRequest;
import com.grocery.model.upload.DeleteFileRequest;
import com.grocery.service.OrderService;
import com.grocery.service.ProductService;
import com.grocery.service.UserMgmtService;

@RestController
@RequestMapping("/product")
@CrossOrigin( maxAge = 3600)
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	@Autowired
	private ProductService productService;
	@Autowired
	private EmailTemplateService emailTemplateService;
	@Autowired
	private EmailService emailService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserMgmtService userMgmtService;
	@Autowired
	private OrderQuery orderQuery;
	
	@RequestMapping("/")
	public String home() {
		return "Products";
	}

//	@RequestMapping(method = RequestMethod.POST, value = {"/searchProduct/{userId}", "/searchProduct/{userId}/{searchKey}"} )
//	public SearchProductResponse searchProduct(@PathVariable String userId,@PathVariable Optional<String> searchKey) {
	@RequestMapping(method = RequestMethod.POST, value = "/searchProduct")
	public SearchProductResponse searchProduct(@RequestBody SearchProductRequest request) {
		SearchProductResponse response = new SearchProductResponse();

		try {
			//String searchStr = searchKey.isPresent()?searchKey.get():"";
			List<Product> products = productService.searchProduct(request);
			response.setProducts(products);
			long count = productService.getCount();
			response.setCount(count);
			 System.out.println("size : "+products.size());
			logger.info("Search Products", products);
		} catch (Exception e) {
			logger.error("searchProduct", e);
			response.setSuccess(false);
		}
		return response;
	}
	@RequestMapping(method = RequestMethod.GET, value = "/test")
	public BaseResponse test() {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("title", "RajTitle");
		map.put("body", "RajBody");
		System.out.println(emailTemplateService.getEmailTemplate("registrationConfirm.vm",map));
		emailService.sendEmail("rajazekar@gmail.com", "TEST", "TEST2");
		
		return new BaseResponse();
	}
	@RequestMapping(method = RequestMethod.GET, value = "/getProduct/{id}")
	public GetProductResponse getProduct(@PathVariable long id) {
		GetProductResponse response = new GetProductResponse();

		try {
			Product product = productService.getProduct(id);
			response.setProduct(product);
			logger.info("Get Product:", product);
		} catch (Exception e) {
			logger.error("Get Product Failed", e);
			response.setSuccess(false);
		}
		return response;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addProduct")
	public SuccessIDResponse addProduct(@RequestBody AddProductRequest request) {
		SuccessIDResponse response = new SuccessIDResponse();
		try{
			if(request.getProduct().getImageFile() == null){
				request.getProduct().setImageFile("image_uploads/product_images/2018/January/18-01-2018/Default_Product.jpg");
			}
			/*Product product = new Product();
			product.setName(request.getName());
			product.setDescription(request.getDescription());
			//product.setCode(request.getCode());
			product.setImageFile("drugrx.png");
		//	product.setOriginalQuantity(request.getOriginalQuantity());
			product.setPacking(request.getPacking());
		//	product.setQuantity(request.getQuantity());
			product.setPrice(request.getPrice());	
			product.setAddedBy(request.getAddedBy());*/
			Product product = request.getProduct();
			//if(product.getAddedBy()!=0){
				//product.setName(product.getName()+"(NEW*)");
			//}
			//product.setImageFile("drugrx.png");
			Product product1 = productService.saveProduct(product);
			System.out.println("############2"+JSONUtil.toJson(product1));
		/*	OrderMaster orderMaster=orderQuery.updateOrderMasterPrice(product1);
			response.setId(product1.getId());
			OrderResponse orderdetails = orderService.getOrderById(orderMaster.getId()); 
			System.out.println("@@@@2"+JSONUtil.toJson(orderdetails));
			User user = new User();
			user.setId(product1.getUserId());
			user = userMgmtService.getUserById(user.getId());
			Map<String,Object> map = new HashMap<String,Object>();	
			map.put("order", orderdetails.getOrder());
		    map.put("user", user);
			String subject= "Your product has been updated";
			String emailBody = emailTemplateService.getEmailTemplate("updateProduct.vm",map);
			EmailMessage emailMessage = new EmailMessage();
			emailMessage.setToEmail(user.getEmail());
			emailMessage.setSubject(subject);
			emailMessage.setEmailBody(emailBody);
			emailService.send2EmailQueue(emailMessage);
			logger.info("Add Product:",product1);*/
		}
		catch(Exception e){
			logger.error("Add Product Failed",e);
			response.setSuccess(false);
		}
		return response;
   }
	 @RequestMapping(method = RequestMethod.POST, value="/deleteProductImage")
	    @ResponseBody
	    public SuccessIDResponse deleteProductImage(@RequestBody DeleteFileRequest request) throws IOException {
		// String DEFAULT_IMG_URL="swastika/product_images/drugrx.png";
		 SuccessIDResponse response = new SuccessIDResponse();
		 
		 Product product = productService.getProduct(request.getId());
		 String imgFile = product.getImageFile();
		 
		 
		 String baseUploadDIR = UploadUtil.getProductImageUploadDIR();
		 File file = new File(baseUploadDIR+"/"+imgFile);
		 
		 System.out.println("Files to be deleted.."+file.getAbsolutePath());
		 boolean ret=false;
		 if(file.exists()){
			  ret = file.delete();
		 }
		 product.setImageFile(UploadUtil.DEFAULT_IMG_URL);
		 productService.saveProduct(product);
//		 if(!ret){
//			 //response.setUserErrorMsg("File could not be deleted!");
//			 
//		 }else{
//			 response.setUserErrorMsg("File not deleted!");
//			 response.setSuccess(false);
//			 
//		 }
		 return response;
	 	}
	 	
	 @RequestMapping(method = RequestMethod.GET, value="/productPagination/{page}")
	 public SearchProductResponse productPagination(@PathVariable int page) throws FileNotFoundException, IOException{
		 SearchProductResponse response = new SearchProductResponse();
		
		 try{
			 int from=1;
				int to=18;
				for(int i=1;i<=page;i++){
					if(i==1){
						from=0;
						to=18;
					}
					else{
						from+=18;
						to+=18;
					}
				}
				System.out.println(from+" pagination "+to);
			 List<Product> product = productService.productPagination(from, to);
			 response.setCount(product.size());
			 response.setProducts(product);
			
			 logger.info("product pagination");
		 }
		 catch(Exception e){
			 logger.error("product failed",e);
			 response.setSuccess(false);
		 }
		 return response;
	 }
	 
	 @RequestMapping(method = RequestMethod.GET, value="/getCategories")
	 public CategoriesResponse getCategories(){
		 CategoriesResponse response = new CategoriesResponse();
		 try{
			 List<ProductCategories> categories = productService.getCategories();
			 response.setCategories(categories);
			
			 logger.info("Get Categories");
		 }
		 catch(Exception e){
			 logger.error("Category failed");
			 response.setSuccess(false);
		 }
		 return response;
	 }
	 
	 @RequestMapping(method = RequestMethod.GET, value="/getSubCategories")
	 public CategoriesResponse getSubCategories(){
		 CategoriesResponse response = new CategoriesResponse();
		 try{
			 List<ProductCategories> categories = productService.getSubCategories();
			 response.setCategories(categories);
			 logger.info("Get SubCategories");
		 }
		 catch(Exception e){
			 logger.error("SubCategory failed");
			 response.setSuccess(false);
		 }
		 return response;
	 }
	 
	 @RequestMapping(method = RequestMethod.POST, value="/searchCategory")
	 public SearchProductResponse searchCategory(@RequestBody SubCategoryRequest request){
		 SearchProductResponse response = new SearchProductResponse();
		 try{
			 System.out.println("category "+request.getCategory()+" sub : "+request.getSubCategory());
			 if(!request.getCategory().isEmpty()){
			 List<Product> products = productService.searchByCategory(request.getCategory());
			 response.setProducts(products);
			 response.setCount(products.size());
			 System.out.println(" not empty ");
			 }
			 else{
				 List<Product> products = productService.searchBySubCategory(request.getSubCategory());
				 response.setProducts(products);
				 response.setCount(products.size());
			 }
			 logger.info("Category");
		 }
		 catch(Exception e){
			 logger.error("Category failed");
			 response.setSuccess(false);
		 }
		 return response; 
	 }
	 
	 
}