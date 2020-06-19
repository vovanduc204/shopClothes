package com.duc.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import javax.xml.bind.DatatypeConverter;

import org.hibernate.mapping.Array;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.duc.entity.ConfirmationToken;
import com.duc.entity.Employee;
import com.duc.entity.Permissions;
import com.duc.service.ConfirmationTokenService;
import com.duc.service.EmployeeService;
import com.duc.service.PermissionService;


@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	EmployeeService employeeservice;
	
	@Autowired
	ConfirmationTokenService confirmationtokenservice;
	
	@Autowired
	PermissionService permissionservice;
	
	@GetMapping
	public String Default() {
		return "register";
	}
	
	public static final String HOST_NAME = "smtp.gmail.com";
	
	public static final String APP_EMAIL = "voduc204@gmail.com";
	
	public static final String APP_PASSWORD  = "udigtkpcccbiacbl";
	
//	public static final int SSL_PORT = 465; // Port for SSL
	 
	public static final int TSL_PORT = 587; // Port for TLS/STARTTLS
	    
	@PostMapping
	public ModelAndView Register(@RequestParam String email,@RequestParam String password,@RequestParam String repassword,ModelAndView modelAndView) {
		
		Employee employee= employeeservice.findByEmailIdIgnoreCase(email);
		
		if (employee!=null) {

			modelAndView.addObject("message", "This email already exists!");
			modelAndView.setViewName("eror");
		}else {
			boolean checkemail=validate(email);
			if (checkemail) {
				if (password.equals(repassword)) {
					Employee emp=new Employee();
					
					emp.setEmail(email);
					
					List<Permissions> listpermissions= permissionservice.listPermissions();
			
					for (Permissions permission : listpermissions) {
						if (permission.getPermissionname().equalsIgnoreCase("User")) {
							emp.setPermissions(permission);
						}
						
					}
						
					try {
						emp.setPassword(sha256(password));
					} catch (NoSuchAlgorithmException e) {
						e.printStackTrace();
					}
					
					emp.setIsEnabled(false);
					boolean checkadd=employeeservice.AddEmployee(emp);
					if (checkadd) {
						
						ConfirmationToken confirmationToken = new ConfirmationToken(emp);
						confirmationtokenservice.AddConfirmationToken(confirmationToken);
						
						Properties props = System.getProperties();
				        String host_name = "smtp.gmail.com";
				        
				        props.put("mail.smtp.starttls.enable", "true");
				        props.put("mail.smtp.host", host_name);
				        props.put("mail.smtp.user", APP_EMAIL);
				        props.put("mail.smtp.password", APP_PASSWORD);
				        props.put("mail.smtp.port", "587");
				        props.put("mail.smtp.auth", "true");

				        Session session = Session.getDefaultInstance(props);
				        MimeMessage message = new MimeMessage(session);
						 
				        try {
							message.setRecipients(Message.RecipientType.TO, email);
							message.setSubject("Complete Registration!");
					        message.setFrom(new InternetAddress(APP_EMAIL));
					        
					        String htmlText = "To confirm your account, please click here : "+""
					        		+ "http://localhost:8080/minishop/confirm-account?token="+confirmationToken.getConfirmationToken();
					        BodyPart messageBodyPart = new MimeBodyPart();
				            messageBodyPart.setContent(htmlText, "text/html");
				            
				            Multipart multipart = new MimeMultipart();
				            multipart.addBodyPart(messageBodyPart);
				            
				            message.setContent(multipart);
				            
					        Transport transport = session.getTransport("smtp");
					        
				            transport.connect(host_name, APP_EMAIL, APP_PASSWORD);
				            transport.sendMessage(message, message.getAllRecipients());
				            
				            
				            modelAndView.addObject("emailId", email);
							modelAndView.setViewName("successfulRegisteration");
							
				            System.out.println("Success !");
				            
				            transport.close();
				            
						} catch (MessagingException e) {
							
							e.printStackTrace();
						}
	
					}else {
						modelAndView.addObject("message", "Failed !");
						modelAndView.setViewName("login");
					}
					
				}else {
					modelAndView.addObject("message", "Enter the correct password, please !");
					modelAndView.setViewName("login");
				}
			}
				else {
					modelAndView.addObject("message", "Enter the correct format email, please !");
					modelAndView.setViewName("login");
			}
		}
		
		return modelAndView;
	}
	
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
		    Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

	public static boolean validate(String emailStr) {
		        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		        return matcher.find();
	}
	public String sha256(String original) throws NoSuchAlgorithmException {
	    MessageDigest md = MessageDigest.getInstance("SHA-256");
	    md.update(original.getBytes());
	    byte[] digest = md.digest();
	    return new String(DatatypeConverter.printHexBinary(digest));
	}
}
