package com.duc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.duc.entity.ConfirmationToken;
import com.duc.entity.Employee;
import com.duc.service.ConfirmationTokenService;
import com.duc.service.EmployeeService;

@Controller
public class ConfirmUserController {
	
	@Autowired
	EmployeeService employeeservice;
	
	@Autowired
	ConfirmationTokenService confirmationtokenservice;
	
	 @RequestMapping(value="/confirm-account", method= {RequestMethod.GET, RequestMethod.POST})
	    public ModelAndView confirmUserAccount(ModelAndView modelAndView, @RequestParam("token")String confirmationToken)
	    {
	        ConfirmationToken token =confirmationtokenservice.FindByConfirmationToken(confirmationToken);
	        
//	        System.out.println(token);
	        
	        Employee employee=null;
	        if(token != null)
	        {
//	        	System.out.println(token.getEmployee().getEmail());
	        	employee = employeeservice.findByEmailIdIgnoreCase(token.getEmployee().getEmail());
//	        	System.out.println(employee);
	        	employee.setIsEnabled(true);
	        	employeeservice.UpdateConfirmEmployee(employee);
	            modelAndView.setViewName("accountVerified");
	        }
	        else
	        {
	            modelAndView.addObject("message","The link is invalid or broken!");
	            modelAndView.setViewName("error");
//	            System.out.println(employee);
	        }

	        return modelAndView;
	    }
}
