package com.bp.bootdemo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bp.bootdemo.entity.Book;
import com.bp.bootdemo.entity.Department;

public interface DepartmentRepository extends JpaRepository<Department,Integer>
{

	Optional<Department> findDepartmentByDepartmentName(String departmentName);
}
