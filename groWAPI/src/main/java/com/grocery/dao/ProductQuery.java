package com.grocery.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.grocery.model.dbentity.Product;
import com.grocery.model.product.ProductCategories;

@Service
@Transactional
public class ProductQuery {
	 @Autowired
     JdbcTemplate jdbcTemplate;
	 
		
	 public List<Product> findProducts(long roleId,String searchKey){
		 String query="select * from product where  id<>1 ";	 
		 if(searchKey!=null ){
			 query+= " and  name like '%"+searchKey+"%'";
		 }
		
		if (roleId > 3) {// for admin user show everything
//			if (userId != 0) {
//				query += " and (in_inventory=1 or user_id=" + userId + ")";
//			} else {
				query += " and active=1 and (in_inventory=1)";
		//	}
		}
		 query+=" order by user_id desc";
		 query+=" limit 18";
		 
	/*	 if("".equalsIgnoreCase(searchKey)){
			 if(userId!=0){
			   query ="select * from product where active=1 and id<>1 and (in_inventory=1 or user_id="+userId+")  order by user_id desc limit 10";
			 }else{
			   query ="select * from product where active=1 and id<>1 and in_inventory=1   limit 10";
			 }
		 }else{
			 if(userId!=0){
			    query ="select * from product where active=1 and id<>1 and (in_inventory=1 or user_id="+userId+")  and  name like '%"+searchKey+"%' limit 10";
			 }else{
				 query ="select * from product where active=1 and id<>1 and in_inventory=1  and  name like '%"+searchKey+"%' limit 10";
			 }
		 }*/
		  
		 System.out.println("Product query"+query);
		 List<Product> products  = jdbcTemplate.query(query, new BeanPropertyRowMapper(Product.class));
		 return products; 
	 }
	 
	 public List<Product> productPagination(int from,int to){
		 String query = "select * from product where active=1 and id<>1  order by user_id desc ";
		 query+="limit "+from+" , "+to;
		 List<Product> products  = jdbcTemplate.query(query, new BeanPropertyRowMapper(Product.class));
		 return products; 
	 }
	 
	 public List<ProductCategories> getCategories(){
		 String query = "select distinct product_class from product ";
		 List<ProductCategories> categories = jdbcTemplate.query(query, new BeanPropertyRowMapper(ProductCategories.class));
		 return categories; 
	 }
	 
	 public List<ProductCategories> getSubCategories(){
		 String query = "SELECT MIN(product_class) AS product_class, sub_class "
				 		+" from product  where sub_class != 'Null' group by sub_class";
		 List<ProductCategories> subCategories = jdbcTemplate.query(query, new BeanPropertyRowMapper(ProductCategories.class));
		 return subCategories; 
	 }
}
