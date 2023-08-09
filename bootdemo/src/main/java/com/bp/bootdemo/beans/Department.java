package com.bp.bootdemo.beans;

import org.springframework.stereotype.Component;

@Component
public class Department 
{
	private int dpNo=10;
	private String deptName="science";
	private String location="guntur";
	
	public Department() {}

	public Department(int dpNo, String deptName, String location) {
		
		this.dpNo = dpNo;
		this.deptName = deptName;
		this.location = location;
	}

	public int getDpNo() {
		return dpNo;
	}

	public void setDpNo(int dpNo) {
		this.dpNo = dpNo;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	

}
