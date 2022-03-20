package com.adj.repository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.adj.entity.Employee;

public interface EmployeeRepository {

	public void addEmployee(HttpServletRequest request, HttpServletResponse response);
	public Employee getEmployeeById(Long id);
	public List<Employee> getEmployees();
	public Employee deleteEmployeeById(Long id);
	
}
