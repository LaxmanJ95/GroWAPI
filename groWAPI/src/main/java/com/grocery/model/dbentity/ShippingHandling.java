package com.grocery.model.dbentity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ShippingHandling {

	@Id
	@GeneratedValue
	int id;
	String country;
	String county;
	String city;
	String shippingRate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getShippingRate() {
		return shippingRate;
	}
	public void setShippingRate(String shippingRate) {
		this.shippingRate = shippingRate;
	}
	
	
	
	
}
