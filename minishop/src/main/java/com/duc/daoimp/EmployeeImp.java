package com.duc.daoimp;

import com.duc.entity.Employee;

public interface EmployeeImp {
	boolean CheckLogin(String email,String password);
	boolean AddEmployee(Employee employee);
	Employee findByEmailIdIgnoreCase(String email);
	boolean UpdateConfirmEmployee(Employee employee);
}
