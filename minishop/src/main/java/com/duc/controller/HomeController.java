package com.duc.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.duc.entity.Cart;
import com.duc.entity.Category;
import com.duc.entity.Product;
import com.duc.service.CategoryService;
import com.duc.service.ProductService;


@Controller
@RequestMapping("/")
@SessionAttributes({"email","cart"})
public class HomeController {

	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelmap,HttpSession httpsession) {
		
		List<Category> listcategory = categoryservice.GetCategory();
	
		if (httpsession.getAttribute("email")!=null) {
			String emails=(String) httpsession.getAttribute("email");
			String first=emails.substring(0,1).toUpperCase();
			modelmap.addAttribute("first",first);
		}
		if (null!=httpsession.getAttribute("cart")) {
			List<Cart> listcart= (List<Cart>) httpsession.getAttribute("cart");
			modelmap.addAttribute("cartamount",listcart.size());
		}
		
		List<Product> listProduct=productService.listProductLimit(0);
		modelmap.addAttribute("listProduct",listProduct);
		modelmap.addAttribute("listcategory",listcategory);
		return "home";
	}

}
