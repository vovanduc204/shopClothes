package com.duc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.EmployeeDAO;
import com.duc.daoimp.EmployeeImp;
import com.duc.entity.Employee;

@Service
public class EmployeeService implements EmployeeImp{
	@Autowired
	EmployeeDAO employeeDAO;
	
	public boolean CheckLogin(String email, String password) {
		boolean check=employeeDAO.CheckLogin(email, password);
		return check;
	}

	public boolean AddEmployee(Employee employee) {
		boolean checkadd=employeeDAO.AddEmployee(employee);
		return checkadd;
	}

	public Employee findByEmailIdIgnoreCase(String email) {
		
		return employeeDAO.findByEmailIdIgnoreCase(email);
	}

	public boolean UpdateConfirmEmployee(Employee employee) {
		
		return employeeDAO.UpdateConfirmEmployee(employee);
	}
}
