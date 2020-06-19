package com.duc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duc.entity.Category;
import com.duc.entity.Product;
import com.duc.service.CategoryService;
import com.duc.service.ProductService;

@Controller
@RequestMapping("product/")
public class ProductController {

	@Autowired
	CategoryService categoryservice;
	
	@Autowired
	ProductService productservice;

	@GetMapping("{id}/{categoryname}")
	public String Default(ModelMap modelmap, @PathVariable int id, @PathVariable String categoryname,@RequestParam(required = false) Integer page ) {
		
		List<Category> listcategory = categoryservice.GetCategory();
		
//		List<Product> listproduct = productservice.listProductCategory(id);

		
		int sizeRecord=4;
		int pageid=0;
		if(page!=null) {
			pageid=page;
		}
		
		if(pageid == 0) {
		         
        } else {            
        	pageid= (pageid-1)*sizeRecord;  
        }
		
		int totalRecord=productservice.CountProductByPage(id);
		
		int noOfPages = (int) Math.ceil(totalRecord * 1.0 / sizeRecord);
		
		List<Product> listproductbypage = productservice.listProductByPage(pageid, sizeRecord, id);
		
		
		
		modelmap.addAttribute("noOfPages",noOfPages);
		
		modelmap.addAttribute("id",id);
		modelmap.addAttribute("categoryname",categoryname);
		modelmap.addAttribute("page",page);
		
		modelmap.addAttribute("listcategory",listcategory);
		modelmap.addAttribute("categoryname",categoryname);
		modelmap.addAttribute("listproduct",listproductbypage);
		
		return "product";
	}
}
