package com.grocery.rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.text.ParseException;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.grocery.clib.util.UploadUtil;
import com.grocery.model.order.SearchOrder;
import com.grocery.model.order.SearchOrdersRequest;
import com.grocery.service.DownloadService;

@RestController
@RequestMapping("/download")
@CrossOrigin( maxAge = 3600)
public class DownloadController {

	private static final Logger logger = LoggerFactory.getLogger(DownloadController.class);
	
	@Resource(name="downloadService")
	 private DownloadService downloadService;
	
	
	    @RequestMapping(method = RequestMethod.GET , value = "/xls" )
	  //  public GainResponse getXls(@RequestBody SearchOrdersRequest request) throws Exception{
	    public void getXLS(HttpServletResponse response, Model model,
	    		 @RequestParam(value="id", required=false) String id, 
	    	        @RequestParam(value="name", required=false) String name,
	    	        @RequestParam(value="status", required=false) Integer status, 
	    	        @RequestParam(value="totalPrice", required=false) String totalPrice,
	    	        @RequestParam(value="totalItems", required=false) String totalItems, 
	    	        @RequestParam(value="fromDate", required=false) String fromDate,
	    	        @RequestParam(value="toDate", required=false) String toDate) throws ClassNotFoundException ,Exception{
	    	System.out.println("@@@ Coming"+id+ " + "+name);
	    	logger.debug("Received request to download order details as an XLS");
	    	SearchOrder order = new SearchOrder();
	    	order.setId(id);
	    	order.setName(name);
	    	order.setFromDate(fromDate);
	    	order.setToDate(toDate);
	    	order.setTotalItems(totalItems);
	    	order.setTotalPrice(totalPrice);
	    	order.setStatus(status);
	    	XSSFWorkbook workbook = downloadService.downloadexcels(order);
	    	
	    	response.setContentType("text/xls");
            String disposition = "attachment; fileName=CustomerOrders.xlsx";
            response.setHeader("Content-Disposition", disposition);
	    	OutputStream out = response.getOutputStream();
	    	workbook.write(out);
	    	 out.close();
	    	 System.out.println("@@@ Coming"+response.getOutputStream());
	    	response.getOutputStream();
	 }
	  
	    
   
    
}
