package com.grocery.service;

import java.awt.Font;
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.util.List;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Color;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.clib.util.JSONUtil;
import com.grocery.dao.OrderDetailRepository;
import com.grocery.dao.OrderQuery;
import com.grocery.dao.ProductQuery;
import com.grocery.model.dbentity.Address;
import com.grocery.model.dbentity.OrderDetail;
import com.grocery.model.dbentity.Product;
import com.grocery.model.dbentity.User;
import com.grocery.model.order.MyOrder;
import com.grocery.model.order.MyOrderDetail;
import com.grocery.model.order.MyOrderMasterDetails;
import com.grocery.model.order.OrderDetailSummary;
import com.grocery.model.order.SearchOrder;

@Service("downloadService")
@Transactional
public class DownloadService {

	@Autowired
	private OrderQuery orderQuery;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserMgmtService userService;
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	public XSSFWorkbook downloadexcels(SearchOrder searchOrder) throws ParseException {
//		int to = from + 9;
//		System.out.println("from "+from+" to "+to);
		List<MyOrderMasterDetails> ordersWithDetails = orderQuery.getMyOrderMasterDetails(searchOrder);
		System.out.println(JSONUtil.toJson(ordersWithDetails));

		XSSFWorkbook workbook = new XSSFWorkbook();
		XSSFSheet spreadsheet = workbook.createSheet("employe db");
		spreadsheet.setColumnWidth(1, 2500);
		spreadsheet.setColumnWidth(2, 4000);
		spreadsheet.setColumnWidth(3, 6000);
		spreadsheet.setColumnWidth(4, 5000);
		spreadsheet.setColumnWidth(5, 2500);
		spreadsheet.setColumnWidth(6, 2500);
		spreadsheet.setColumnWidth(7, 2500);
		
		XSSFFont my_font = workbook.createFont();
		my_font.setBoldweight(XSSFFont.BOLDWEIGHT_BOLD);
		
		XSSFCellStyle cellStyle = workbook.createCellStyle();
		cellStyle.setFillForegroundColor(new XSSFColor(new java.awt.Color(222, 226, 226)));
		cellStyle.setFillPattern(CellStyle.SOLID_FOREGROUND);
		cellStyle.setAlignment(CellStyle.ALIGN_CENTER);
		cellStyle.setFont(my_font);
		cellStyle.setWrapText(false);
		
		XSSFCellStyle cellStyle1 = workbook.createCellStyle();
		cellStyle1.setFillForegroundColor(new XSSFColor(new java.awt.Color(250, 187, 76)));
		cellStyle1.setFillPattern(CellStyle.SOLID_FOREGROUND);
		cellStyle1.setAlignment(CellStyle.ALIGN_CENTER);
		cellStyle1.setFont(my_font);
		cellStyle1.setWrapText(false);

		XSSFRow row = spreadsheet.createRow(1);
		XSSFCell cell;

		cell = row.createCell(1);
		cell.setCellValue("Order ID");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(2);
		cell.setCellValue("UserName");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(3);
		cell.setCellValue("Order Date");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(4);
		cell.setCellValue("Item");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(5);
		cell.setCellValue("Quantity");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(6);
		cell.setCellValue("Price");
		cell.setCellStyle(cellStyle1);
		cell = row.createCell(7);
		cell.setCellValue("Total Price");
		cell.setCellStyle(cellStyle1);

//		int i = 2;
//		MyOrderMasterDetails prevOrder=null;
//		for (MyOrderMasterDetails orders : ordersWithDetails) {
//			row = spreadsheet.createRow(i);
//			cell = row.createCell(1);
//			cell.setCellValue(orders.getOrderId());
//			cell.setCellStyle(cellStyle);
//			cell = row.createCell(2);
//			cell.setCellValue(orders.getUserName());
//			cell.setCellStyle(cellStyle);
//			cell = row.createCell(3);
//			cell.setCellValue(orders.getOrderDate().toLocaleString());
//			cell.setCellStyle(cellStyle);
//		 //   prevOrderId = orders.getOrderId();
//		    cell = row.createCell(4);
//		    cell.setCellStyle(cellStyle);
//		    cell = row.createCell(5);
//		    cell.setCellStyle(cellStyle);
//		    cell = row.createCell(6);
//		    cell.setCellStyle(cellStyle);
//		    cell = row.createCell(7);
//		    cell.setCellStyle(cellStyle);
//			i++;
//			
//			List<OrderDetailSummary> orderDetail = orderQuery.getOrderDetailSummary();
//			for(OrderDetailSummary details : orderDetail){
//				if(orders.getOrderId() == details.getOrderId()){
//				row =spreadsheet.createRow(i);		
//				cell = row.createCell(4);
//				cell.setCellValue(details.getName());
//				cell = row.createCell(5);
//				cell.setCellValue(details.getQuantity());
//				cell = row.createCell(6);
//				cell.setCellValue(details.getPrice());
//				double ProductValue;
//				ProductValue = (details.getQuantity() * details.getPrice());
//				cell = row.createCell(7);
//				cell.setCellValue(ProductValue);
//				i++;
//				}
//			}
//			row = spreadsheet.createRow(i);
//			cell = row.createCell(4);
//			cell.setCellValue("Total");
//			cell.setCellStyle(cellStyle1);
//			cell = row.createCell(5);
//			cell.setCellValue(orders.getTotalQuantity());
//			cell.setCellStyle(cellStyle1);
//			cell = row.createCell(6);
//			cell.setCellStyle(cellStyle1);
//			cell = row.createCell(7);
//			cell.setCellValue(orders.getTotalPrice());
//			cell.setCellStyle(cellStyle1);
//			i=i+1;	
//		}
		
		
		int i = 2; 
		long prevOrderId = 0;
		MyOrderMasterDetails prevOrder=null;
		for (MyOrderMasterDetails orders : ordersWithDetails) {
			
			if(prevOrderId!=0 && prevOrderId != orders.getOrderId()){
				row = spreadsheet.createRow(i);
				cell = row.createCell(4);
				cell.setCellValue("Total");
				cell.setCellStyle(cellStyle1);
				cell = row.createCell(5);
				cell.setCellValue(prevOrder.getTotalQuantity());
				cell.setCellStyle(cellStyle1);
				cell = row.createCell(6);
				cell.setCellStyle(cellStyle1);
				cell = row.createCell(7);
				cell.setCellValue(prevOrder.getTotalPrice());
				cell.setCellStyle(cellStyle1);
				i=i+1;		
				}

			if (prevOrderId != orders.getOrderId()) {
				row = spreadsheet.createRow(i);
				cell = row.createCell(1);
				cell.setCellValue(orders.getOrderId());
				cell.setCellStyle(cellStyle);
				cell = row.createCell(2);
				cell.setCellValue(orders.getUserName());
				cell.setCellStyle(cellStyle);
				cell = row.createCell(3);
				cell.setCellValue(orders.getOrderDate().toLocaleString());
				cell.setCellStyle(cellStyle);
			    prevOrderId = orders.getOrderId();
			    cell = row.createCell(4);
			    cell.setCellStyle(cellStyle);
			    cell = row.createCell(5);
			    cell.setCellStyle(cellStyle);
			    cell = row.createCell(6);
			    cell.setCellStyle(cellStyle);
			    cell = row.createCell(7);
			    cell.setCellStyle(cellStyle);
				i++;
			}
			
					row = spreadsheet.createRow(i);					
					cell = row.createCell(4);
					cell.setCellValue(orders.getName());
					cell = row.createCell(5);
					cell.setCellValue(orders.getQuantity());
					cell = row.createCell(6);
					cell.setCellValue(orders.getPrice());
					double ProductValue;
					ProductValue = (orders.getQuantity() * orders.getPrice());
					cell = row.createCell(7);
					cell.setCellValue(ProductValue);
					i++;
					prevOrder = orders;
				
		}
		
		//create last row
		if(prevOrder!=null){
			
			row = spreadsheet.createRow(i);
			cell = row.createCell(4);
			cell.setCellValue("Total");
			cell.setCellStyle(cellStyle1);
			cell = row.createCell(5);
			cell.setCellValue(prevOrder.getTotalQuantity());
			cell.setCellStyle(cellStyle1);
			cell = row.createCell(6);
			cell.setCellStyle(cellStyle1);
			cell = row.createCell(7);
			cell.setCellValue(prevOrder.getTotalPrice());
			cell.setCellStyle(cellStyle1);
			i++;
			} 
		
		
		try {
			//FileOutputStream out = new FileOutputStream(new File("C:/WS/Orderexcelsheet.xlsx"));
		//	workbook.write(out);
		//	out.close();
			System.out.println("exceldatabase.xlsx written successfully");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return workbook;
	}

}
