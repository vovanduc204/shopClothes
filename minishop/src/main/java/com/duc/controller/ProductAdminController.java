package com.duc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.duc.entity.Category;
import com.duc.entity.Product;
import com.duc.entity.ProductColor;
import com.duc.entity.ProductSize;
import com.duc.service.CategoryService;
import com.duc.service.ProductColorService;
import com.duc.service.ProductService;
import com.duc.service.ProductSizeService;



@Controller
@RequestMapping("/admin/product")
public class ProductAdminController {

	@Autowired
	ProductService productservice;
	
	@Autowired
	CategoryService categoryservice;
	
	@Autowired
	ProductColorService productcolorservice;

	@Autowired
	ProductSizeService productsizeservice;
	
	@GetMapping
	public String Default(ModelMap modelmap) {
		
		List<Product> listproduct= productservice.listProductLimit(0);
		
		List<Product> listallproduct= productservice.listProductLimit(-1);
		
		List<Category> listcategory = categoryservice.GetCategory();
		
		List<ProductColor> listproductcolor = productcolorservice.GetListProductColor();
		
		List<ProductSize> listproductsize = productsizeservice.GetListSizeProduct();
		
		double sumpage=Math.ceil((double) listallproduct.size()/5);
		
		modelmap.addAttribute("listallproduct",listallproduct);
		
		modelmap.addAttribute("listproduct",listproduct);
		
		modelmap.addAttribute("sumpage",sumpage);
		
		modelmap.addAttribute("listcategory",listcategory);
		
		modelmap.addAttribute("listproductcolor",listproductcolor);
		
		modelmap.addAttribute("listproductsize",listproductsize);
		
		return "admin/addproduct";
	}
}
