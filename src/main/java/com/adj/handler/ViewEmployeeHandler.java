package com.adj.handler;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adj.entity.Employee;
import com.adj.repository.EmployeeRepository;
import com.adj.service.EmployeeService;

public class ViewEmployeeHandler implements RequestHandler {

	EmployeeRepository service = new EmployeeService();

	@Override
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Employee> employees = service.getEmployees();
		for (Employee employee2 : employees) {
			System.out.println("Inside ViewEmployeeHandler..");
			System.out.println(employee2.getId());
			System.out.println(employee2.getFirstName());
			System.out.println(employee2.getLastName());
		}
		request.setAttribute("employees", employees);
		System.out.println("Employee viewed");
		// response.sendRedirect("viewList.jsp");
		RequestDispatcher dispatcherServlet = request.getRequestDispatcher("viewEmp.jsp");
		dispatcherServlet.forward(request, response);

	}

}
