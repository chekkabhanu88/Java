package com.bp.bootdemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bp.bootdemo.entity.Department;
import com.bp.bootdemo.repository.DepartmentRepository;

@Service
public class DepartmentService 
{

	@Autowired
	DepartmentRepository departmentRepository;
	
	public Department getDepartmentByDepartmentId(int departmentId)
	{
		Optional<Department> od= departmentRepository.findById(20);
		if(od.isPresent())
			return od.get();
		throw new RuntimeException("Department record is not exist");
	}
	
	public Department getDepartmentByDepartmentName(String departmentname)
	{
		Optional<Department> dn= departmentRepository.findDepartmentByDepartmentName(departmentname);
		if(dn.isPresent())
			return dn.get();
		throw new RuntimeException("department record is not found");
	}
}
