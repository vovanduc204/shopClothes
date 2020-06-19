package com.duc.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.duc.service.EmployeeService;

@Controller
@RequestMapping("/login")
@SessionAttributes("email")
public class LoginController {
	
	@Autowired
	EmployeeService employeeservice;
	
	@GetMapping
	public String Default() {
		return "login";
	}
	
	@PostMapping
	public String Login(@RequestParam String email,@RequestParam String password,ModelMap modelmap,HttpSession session,HttpServletRequest request,HttpServletResponse response) throws NoSuchAlgorithmException {
	
		boolean check=employeeservice.CheckLogin(email,sha256(password));

		if (check) {
			 session.setAttribute("email", email);
			if(request.getParameter("remember-me")!=null)
	        {
	            Cookie ckUsername=new Cookie("email",email);
	            ckUsername.setMaxAge(30);
	            response.addCookie(ckUsername);
	            Cookie ckPassword=new Cookie("password",password);
	            ckUsername.setMaxAge(30);
	            response.addCookie(ckPassword);
	        }
			return "redirect:" + "/";
		}else {
			modelmap.addAttribute("checklogin","Login failed !");
			return "login";
		}
		
	}

	public String sha256(String original) throws NoSuchAlgorithmException {
	    MessageDigest md = MessageDigest.getInstance("SHA-256");
	    md.update(original.getBytes());
	    byte[] digest = md.digest();
	    return new String(DatatypeConverter.printHexBinary(digest));
	}
}
