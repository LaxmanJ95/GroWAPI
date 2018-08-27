package com.grocery.clib.util;


import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;


public class ImportCSV {
	public static void main(String[] args) {
					
					PreparedStatement ps=null;
					BufferedReader br=null;

					 try{
						  
						 Connection connection = DBConnection.getConnection(); 
						    br=new BufferedReader(new FileReader("/C:/Users/lakshmanan/Music/SpiceCorner_Product.csv"));
						    String sql="insert into product(NAME,COST_PRICE,PRODUCT_CLASS,SUB_CLASS) values(?,?,?,?)";
						    ps=connection.prepareStatement(sql);
						    String line=null;
						    int i=0;
						    while((line=br.readLine())!=null){
						    
						    	String[] value=line.split(",");
						    	
						    	System.out.println(i++ +":len:"+value.length+"-Loading.."+ line+value[3]);
						    	if(value[3] == ""){
						    		value[3]="null";
						    	}
						    	
						    	ps.setString(1, value[0]);
						    	ps.setString(2,  value[1]);
						    	ps.setString(3,  value[2]);
						    	ps.setString(4,  value[3]);
						    	ps.executeUpdate();

						    	
						    	//System.out.println(value);
							 }
						    
							    br.close();
							    ps.close();
							    connection.close();
					 }
					 catch(Exception e){
						 e.printStackTrace();
					 }
				}
}
