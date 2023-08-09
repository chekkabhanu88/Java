package com.bp.bootdemo.beans;

import org.springframework.stereotype.Component;

@Component
public class Address 
{

	private String hno="3-3-1";
	private String street="ab street";
	private String city="banglore";
	private String state="karnataka";
	
	public Address() {}

	public Address(String hno, String street, String city, String state) {
		
		this.hno = hno;
		this.street = street;
		this.city = city;
		this.state = state;
	}

	public String getHno() {
		return hno;
	}

	public void setHno(String hno) {
		this.hno = hno;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}
