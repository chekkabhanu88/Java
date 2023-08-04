package com.bp.spcd.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

//@Component 
@Repository
public class Address 
{
   private String hno="1-2-3";
   private String streetname="hillway";
   private String city="hyd";
   private String state="ts";
   
   public Address( ) {}

public Address(String hno, String streetname, String city, String state)
{
	
	this.hno = hno;
	this.streetname = streetname;
	this.city = city;
	this.state = state;
}

public String getHno() {
	return hno;
}

public void setHno(String hno) {
	this.hno = hno;
}

public String getStreetname() {
	return streetname;
}

public void setStreetname(String streetname) {
	this.streetname = streetname;
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
