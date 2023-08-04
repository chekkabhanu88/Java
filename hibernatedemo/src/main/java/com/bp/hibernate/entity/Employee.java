package com.bp.hibernate.entity;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity

public class Employee 
{

	@Id
	@Column(name="empid")
	private int employeeId;
	@Column(name="ename")
	private String employeeName;
	private double salary;
	@Column(name="deptno")
	private int departmentno;
	
	public Employee() {}

	public Employee(int employeeId, String employeeName, double salary, int departmentno) {
		
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.salary = salary;
		this.departmentno = departmentno;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public int getDepartmentno() {
		return departmentno;
	}

	public void setDepartmentno(int departmentno) {
		this.departmentno = departmentno;
	}
	
	
}
