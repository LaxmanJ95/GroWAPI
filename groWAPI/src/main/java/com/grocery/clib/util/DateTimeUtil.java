package com.grocery.clib.util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;



public class DateTimeUtil {

	public static String getTodayString(){

		//Date date = Calendar.getInstance().getTime();
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		//formatter.setTimeZone(TimeZone.getTimeZone("UTC"));
		String today = formatter.format(new Date());
		
		return  today;
	}
	public static Date stringToDate(String argDate) {
		Date t = null;
		try {
			//TimeZone tz = TimeZone.getDefault();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
			sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
			sdf.setLenient(false);
			//sdf.setTimeZone(tz);
			t = new Date(sdf.parse(argDate).getTime());

		} catch (java.text.ParseException pe) {
			//logger_.debug("ParseException encountered in stringToTimestamp. String = " + argDate + ", Msg = " + pe.getMessage());
		}
		return t;
	}
	public static String convertToStringFormat(String dateComing) throws ParseException{
		String dateString = null;
		    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
				 Date myDate = dateFormat.parse(dateComing);
				 Calendar cal = Calendar.getInstance();
			        cal.setTime(myDate);
			        cal.add(Calendar.DATE, 1); //minus number would decrement the days
			        cal.getTime();
				 myDate =cal.getTime();
			    DateFormat outputFormat = new SimpleDateFormat("MM/dd/yyyy",
			        Locale.ENGLISH);
			    outputFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
			   
			    dateString = outputFormat.format(myDate);
			    System.out.println(" sdfv  sdfsd "+dateString);
			    return dateString;
	}
	public  static String convertStringToDate(Date indate)
	{
	   String dateString = null;
	   SimpleDateFormat sdfr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   /*you can also use DateFormat reference instead of SimpleDateFormat 
	    * like this: DateFormat df = new SimpleDateFormat("dd/MMM/yyyy");
	    */
	   try{
		dateString = sdfr.format( indate );
	   }catch (Exception ex ){
		System.out.println(ex);
	   }
	   return dateString;
	}
	public static Date parse(String value, DateFormat... formatters) {
	    Date date = null;
	    for (DateFormat formatter : formatters) {
	      try {
	        date = formatter.parse(value);
	        break;
	      } catch (ParseException e) {
	      }
	    }
	    return date;
	  }
	public static String getDateAndTime(){
		Date dNow = new Date( );
	      SimpleDateFormat ft = 
	      new SimpleDateFormat ("yyyy-MM-dd HH:mm:s");
	      return ft.format(dNow);
	}
	public static Date getTodayAsDate(){
	 return new Date();
	}
	public static void main(String s[]) throws ParseException{
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
		 Date myDate = dateFormat.parse("2018-02-25T18:30:00.000Z");
		 DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); //If you need time just put specific format for time like 'HH:mm:ss'
		 String dateStr = formatter.format(myDate);
		
		 System.out.println(dateStr);
		 
		 SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
		    Date parsedDate = dateFormat1.parse("2018-02-25T18:30:00.000Z");
		    Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
		    System.out.println(timestamp);

	}
}
