package com.adj.handler;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adj.repository.EmployeeRepository;
import com.adj.service.EmployeeService;

public class AddEmployeeHandler implements RequestHandler {
	EmployeeRepository addEmpService = new EmployeeService();

	@Override
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		addEmpService.addEmployee(request, response);
		RequestDispatcher dispatcherServlet=request.getRequestDispatcher("addEmployee.jsp");
		System.out.println("Employee Added...");
		dispatcherServlet.forward(request, response);
	}

	
}
