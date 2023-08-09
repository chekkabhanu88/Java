package com.bp.rest.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Train 
{
	@Id
	@Column(name="train_id")
	private int trainId;
	@Column(name="train_name")
	private String trainName;
	private String source;
	private String destination;
	private int compartments;
	private double fare;
	
	public Train() {}

	public Train(int trainId, String trainName, String source, String destination, int compartments, double fare) {
		
		this.trainId = trainId;
		this.trainName = trainName;
		this.source = source;
		this.destination = destination;
		this.compartments = compartments;
		this.fare = fare;
	}

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getCompartments() {
		return compartments;
	}

	public void setCompartments(int compartments) {
		this.compartments = compartments;
	}

	public double getFare() {
		return fare;
	}

	public void setFare(double fare) {
		this.fare = fare;
	}
	
}
