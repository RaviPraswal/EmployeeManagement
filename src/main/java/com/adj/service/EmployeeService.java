package com.adj.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.adj.entity.Employee;
import com.adj.repository.EmployeeRepository;

public class EmployeeService implements EmployeeRepository {

	private Long id = 0L;
	List<Employee> employees = new ArrayList<Employee>();

	public void addEmployee(HttpServletRequest request, HttpServletResponse response) {
		Employee employee = new Employee();
		response.setContentType("text/html");
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		/*
		 * String email = request.getParameter("email"); String password =
		 * request.getParameter("password"); String confirmPassword =
		 * request.getParameter("confirm-password"); String gender =
		 * request.getParameter("gender"); String hobbies =
		 * request.getParameter("hobbies"); String incomeSource =
		 * request.getParameter("level"); String income =
		 * request.getParameter("experience"); String image =
		 * request.getParameter("choose-file"); String age =
		 * request.getParameter("age");
		 */
		employee.setId(getId());
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		/*
		 * employee.setEmail(email); employee.setPassword(password);
		 * employee.setComfirmPassword(confirmPassword); employee.setGender(gender); //
		 * employee.setHobbies(hobbies); //right now not able to set string to list of
		 * string employee.setIncomeSource(incomeSource);
		 * employee.setIncome(BigDecimal.valueOf(Long.parseLong(income)));// converting
		 * string to long and long to big // decimal
		 * employee.setProfilePicture(image.getBytes());
		 * employee.setAge(Integer.parseInt(age));
		 */
		employees.add(employee);
	}

	public Employee getEmployeeById(Long id) {
		for (Employee employee : employees) {
			if (id == employee.getId())
				return employee;
		}
		return null;
	}

	public List<Employee> getEmployees() {
/*
		for (Employee employee2 : employees) {
			System.out.println("called from addEmployee");
			System.out.println(employee2.getId());
			System.out.println(employee2.getFirstName());
			System.out.println(employee2.getLastName());
		}
*/
		return employees;
	}

	public Employee deleteEmployeeById(Long id) {

		return null;

	}

	private Long getId() {
		return id = id + 1;
	}

}
