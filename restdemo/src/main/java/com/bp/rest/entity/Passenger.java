package com.bp.rest.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Passenger 
{
  @Id
  @Column(name="pass_id")
  private int passengerId;
  
  @Column(name="pass_name")
  private String passengerName;
  
  @Column(name="pass_mobile")
  private long mobileNo;
  
  @Column(name="pass_age")
  private int passengerAge;
  
  @Column(name="train_id")
  private int trainId;
  
  public Passenger(){}

public Passenger(int passengerId, String passengerName, long mobileNo, int passengerAge, int trainId) {
	
	this.passengerId = passengerId;
	this.passengerName = passengerName;
	this.mobileNo = mobileNo;
	this.passengerAge = passengerAge;
	this.trainId = trainId;
}

public int getPassengerId() {
	return passengerId;
}

public void setPassengerId(int passengerId) {
	this.passengerId = passengerId;
}

public String getPassengerName() {
	return passengerName;
}

public void setPassengerName(String passengerName) {
	this.passengerName = passengerName;
}

public long getMobileNo() {
	return mobileNo;
}

public void setMobileNo(long mobileNo) {
	this.mobileNo = mobileNo;
}

public int getPassengerAge() {
	return passengerAge;
}

public void setPassengerAge(int passengerAge) {
	this.passengerAge = passengerAge;
}

public int getTrainId() {
	return trainId;
}

public void setTrainId(int trainId) {
	this.trainId = trainId;
}
  
  
}
