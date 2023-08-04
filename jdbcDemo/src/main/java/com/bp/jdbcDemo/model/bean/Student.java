package com.bp.jdbcDemo.model.bean;

public class Student 
{
	private int reg_id;
	private String name;
	private int age;
	private int standard;
	private String section;
	public Student(int reg_id, String name, int age, int standard, String section) {
		
		this.reg_id = reg_id;
		this.name = name;
		this.age = age;
		this.standard = standard;
		this.section = section;
	}
	public int getReg_id() {
		return reg_id;
	}
	public void setReg_id(int reg_id) {
		this.reg_id = reg_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getStandard() {
		return standard;
	}
	public void setStandard(int standard) {
		this.standard = standard;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	
	
	

}
