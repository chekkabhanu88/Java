package com.bp.bootdemo.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;

@Entity
public class Department 
{
     @Id
     @Column(name="deptno")
     private int departmentNo;
     
     @Column(name="deptname")
     private String departmentName;
     
     private String location;

     public Department() {}
     
     @OneToMany(fetch=FetchType.EAGER)
     @JoinColumn(name="deptno")
     List<Employee> employees;

	public Department(int departmentNo, String departmentName, String location) 
	{
		
		this.departmentNo = departmentNo;
		this.departmentName = departmentName;
		this.location = location;
	}

	public int getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(int departmentNo) {
		this.departmentNo = departmentNo;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	public List<Employee> getEmployees()
	{
		return employees;
	}
	public void setEmployees(List<Employee> employees)
	{
		this.employees=employees;
	}
}
 


