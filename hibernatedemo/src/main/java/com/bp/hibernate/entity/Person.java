package com.bp.hibernate.entity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
@Entity
public class Person 
{
	@Id
	private int ssn;
	@Column(name="name")
	private String personName;
	
	@Column(name="age")
	private String personAge;
	
	private String gender;
	
	@OneToOne
	@JoinColumn(name="address_id")
	Address address;
	
	public Person() {}

	public Person(int ssn, String personName, String personAge, String gender, Address address) {
		
		this.ssn = ssn;
		this.personName = personName;
		this.personAge = personAge;
		this.gender = gender;
		this.address = address;
	}

	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getPersonAge() {
		return personAge;
	}

	public void setPersonAge(String personAge) {
		this.personAge = personAge;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	

	
}
