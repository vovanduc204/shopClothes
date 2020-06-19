package com.duc.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.duc.entity.Cart;
import com.duc.entity.Category;
import com.duc.entity.Product;
import com.duc.service.CategoryService;
import com.duc.service.ProductService;

@Controller
@RequestMapping("/detail")
@SessionAttributes("cart")
public class DetailController {
	
	@Autowired
	ProductService productservice;
	@Autowired
	CategoryService categoryservice;
	
	@GetMapping("/{idproduct}")
	public String Default(@PathVariable int idproduct,ModelMap modelmap, HttpSession httpsession ) {
		
		Product product=productservice.GetProductDetail(idproduct);
		
		List<Category> listcategory = categoryservice.GetCategory();
		
		List<Product> listproductrelate= productservice.listProductRelated(idproduct, product.getCategory().getIdcategory());
		
		
		

		if (null!=httpsession.getAttribute("cart")) {
			List<Cart> listcart= (List<Cart>) httpsession.getAttribute("cart");
			modelmap.addAttribute("cartamount",listcart.size());
		}
		
		modelmap.addAttribute("product",product);
		modelmap.addAttribute("listcategory",listcategory);
		modelmap.addAttribute("listproductrelate",listproductrelate);
		return "detail";
	}
	
	
	
}
