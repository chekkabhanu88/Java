package com.bp.bootdemo.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Employee 
{
	private int empid=20;
	private String empname="sai";
	private double salary=50000.00;
	@Autowired
	Department department;
	public Employee () {}
	public Employee(int empid, String empname, double salary, Department department) {
		
		this.empid = empid;
		this.empname = empname;
		this.salary = salary;
		this.department = department;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	
	

}
