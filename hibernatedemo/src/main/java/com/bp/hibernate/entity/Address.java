package com.bp.hibernate.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
@Entity
public class Address 
{
@Id
@Column (name="address_id")
private int addressId;

@Column(name="hno")
private String houseno;

@Column(name="street")
private String streetName;

@Column(name="city")
private String cityName;

@Column(name="state")
private String stateName;

@OneToOne(mappedBy="address")
Person person;


public Address() {}

public Address(int addressId, String houseno, String streetName, String cityName, String stateName) {
	
	this.addressId = addressId;
	this.houseno = houseno;
	this.streetName = streetName;
	this.cityName = cityName;
	this.stateName = stateName;
}

public int getAddressId() {
	return addressId;
}

public void setAddressId(int addressId) {
	this.addressId = addressId;
}

public String getHouseno() {
	return houseno;
}

public void setHouseno(String houseno) {
	this.houseno = houseno;
}

public String getStreetName() {
	return streetName;
}

public void setStreetName(String streetName) {
	this.streetName = streetName;
}

public String getCityName() {
	return cityName;
}

public void setCityName(String cityName) {
	this.cityName = cityName;
}

public String getStateName() {
	return stateName;
}

public void setStateName(String stateName) {
	this.stateName = stateName;
}

public Person getPerson()
{
	return person;
}
public void setPerson(Person person)
{
	this.person=person;
}
}