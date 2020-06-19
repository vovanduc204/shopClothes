package com.duc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.duc.entity.Cart;
import com.duc.entity.Category;
import com.duc.entity.JSON_Product;
import com.duc.entity.Product;
import com.duc.entity.ProductColor;
import com.duc.entity.ProductDetail;
import com.duc.entity.ProductSize;
import com.duc.service.EmployeeService;
import com.duc.service.ProductService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("api/")
@SessionAttributes({"email","cart"})

public class ApiController {
	@Autowired
	EmployeeService employeeservice;
	
	@Autowired
	ProductService productservice;
	
	@GetMapping("CheckLogin")
	@ResponseBody
	public String CheckLogin(@RequestParam String email,@RequestParam String password,ModelMap modelmap) {
		boolean check=employeeservice.CheckLogin(email,password);
		modelmap.addAttribute("email",email);
		return ""+check;
	}
	
	@GetMapping("UpdateCart")
	@ResponseBody
	public String UpdateCart(HttpSession httpsession, @RequestParam int amount, @RequestParam int idproduct, @RequestParam int idproductcolor, @RequestParam int idproductsize) {
		if (null != httpsession.getAttribute("cart")) {
			List<Cart> listCart = (List<Cart>) httpsession.getAttribute("cart");
			int position = CheckProductExist(listCart, httpsession, idproduct, idproductcolor, idproductsize);
			
			listCart.get(position).setAmount(amount);
		}
		return "";
	}
	
	@GetMapping("DeleteCart")
	@ResponseBody
	public String DeleteCart(HttpSession httpsession, @RequestParam int idproduct, @RequestParam int idproductcolor, @RequestParam int idproductsize) {
		if (null != httpsession.getAttribute("cart")) {
			List<Cart> listCart = (List<Cart>) httpsession.getAttribute("cart");
			int position = CheckProductExist(listCart, httpsession, idproduct, idproductcolor, idproductsize);
			
			listCart.remove(position);
		}
		return "";
	}
	
	@GetMapping("AddCart")
	@ResponseBody
	public String AddCart(@RequestParam int idproduct, @RequestParam int idproductcolor, @RequestParam int idproductsize, @RequestParam String productname, @RequestParam String price, @RequestParam String colorname, @RequestParam String sizename, @RequestParam int amount, @RequestParam int idproductdetail , HttpSession httpsession) {
		
		if (null==httpsession.getAttribute("cart")) {
			List<Cart> Carts= new ArrayList<Cart>();
			Cart cart=new Cart();
			cart.setIdproduct(idproduct);
			cart.setIdproductcolor(idproductcolor);
			cart.setIdproductsize(idproductsize);
			cart.setProductname(productname);
			cart.setPrice(price);
			cart.setColorname(colorname);
			cart.setSizename(sizename);
			cart.setIdproductdetail(idproductdetail);
			cart.setAmount(1);
			
			Carts.add(cart);
			httpsession.setAttribute("cart", Carts);
			
			return Carts.size()+"";
		}else {
			List<Cart> listCart=(List<Cart>) httpsession.getAttribute("cart");
			int position = CheckProductExist(listCart, httpsession, idproduct, idproductcolor, idproductsize);
			if (position==-1) {
				Cart cart=new Cart();
				cart.setIdproduct(idproduct);
				cart.setIdproductcolor(idproductcolor);
				cart.setIdproductsize(idproductsize);
				cart.setProductname(productname);
				cart.setPrice(price);
				cart.setColorname(colorname);
				cart.setSizename(sizename);
				cart.setIdproductdetail(idproductdetail);
				cart.setAmount(1);
				
				listCart.add(cart);
			}else {
				int newamount=listCart.get(position).getAmount()+1;
				listCart.get(position).setAmount(newamount);
			}
			return listCart.size()+"";
		}
//		List<Cart> listCart=(List<Cart>) httpsession.getAttribute("cart");
//		for (Cart cart : listCart) {
//			System.out.println(cart.getIdproduct()+" amount "+cart.getAmount()+" size "+cart.getSizename());
//		}
		
	}
	private int CheckProductExist(List<Cart> listcart,HttpSession httpsession,int idproduct,int idproductcolor,int idproductsize) {
		for (int i = 0; i < listcart.size(); i++) {
			if (listcart.get(i).getIdproduct()==idproduct&&listcart.get(i).getIdproductcolor()==idproductcolor&&listcart.get(i).getIdproductsize()==idproductsize) {
				return i;
			}
		}
		return -1;
	}
//	@GetMapping("GetCardAmount")
//	@ResponseBody
//	public String GetCardAmount(HttpSession httpsession) {
//		if (null!=httpsession.getAttribute("cart")) {
//			List<Cart> listcart= (List<Cart>) httpsession.getAttribute("cart");
//			return listcart.size()+"";
//		}
//		return "";
//	}
	
	@GetMapping(path="GetProductLimit",produces ="text/html; charset=UTF-8")
	@ResponseBody
	public String GetProductLimit(@RequestParam int start, ModelMap modelmap) {
		
		String html = "";
		
		List<Product> listproduct=productservice.listProductLimit(start);
		
		for (Product product : listproduct) {
			html+="<tr>";
			html+="<td><div class='checkbox'><label><input class='checkboxproduct' type='checkbox' value="+product.getIdproduct()+"></label></div></td>";
			html+="<td class='nameproduct-cart' data-idproductcart='"+product.getIdproduct()+"'>"+product.getProductname()+"</td>";
			html+="<td ><span>"+product.getPrice() +"</span></td>";
			html+="<td ><span> "+product.getSex()+" </span></td>";
			html+="<td class='updateproduct btn btn-warning' data-id="+product.getIdproduct()+">Update</td>";
			html+="/<tr>";
		}
		
		return html;
	}
	
	@GetMapping("CheckAllDeleteProduct")
	@ResponseBody
	public String CheckAllDeleteProduct(@RequestParam int idproduct) {
		productservice.DeleteProductId(idproduct);
		return "";
	}
	
	@Autowired
	ServletContext context;
	
	@PostMapping("UploadFile")
	@ResponseBody
	public String UploadFile(MultipartHttpServletRequest request) {
		
		String path_save_file=context.getRealPath("/resources/Image/product/");
		
		Iterator<String> listname = request.getFileNames();
		
		MultipartFile multipartFile =request.getFile(listname.next());
		
		
		try {
			File file_save= new File(path_save_file+multipartFile.getOriginalFilename());
			multipartFile.transferTo(file_save);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		System.out.print(path_save_file);
		return "";
	}
	
	@PostMapping("AddProduct")
	@ResponseBody
	public void AddProduct(@RequestParam String dataJson) {
		ObjectMapper objectmapper = new ObjectMapper();
		JsonNode jsonObject;
		
		try {
			Product product =new Product();
			jsonObject= objectmapper.readTree(dataJson);
			
			Category category = new Category();
			
			category.setIdcategory(jsonObject.get("category").asInt());
			
			JsonNode jsonDetail = jsonObject.get("listproductdetail");
			Set<ProductDetail> listDetail= new HashSet<ProductDetail>();
			
			for (JsonNode objectDetail : jsonDetail) {
				
				ProductDetail productDetail= new ProductDetail();
				
				ProductColor productColor= new ProductColor();
				productColor.setIdproductcolor(objectDetail.get("productcolor").asInt());
				
				ProductSize productSize= new ProductSize();
				productSize.setIdproductsize(objectDetail.get("productsize").asInt());
				
				productDetail.setProductcolor(productColor);
				productDetail.setProductsize(productSize);
				productDetail.setAmount(objectDetail.get("amount").asInt());
				
				
				listDetail.add(productDetail);
			}
			
			String productname= jsonObject.get("productname").asText();
			String price = jsonObject.get("price").asText();
			String description = jsonObject.get("description").asText();
			String sex = jsonObject.get("sex").asText();
			String productimg=jsonObject.get("productimg").asText();
			
			product.setListproductdetail(listDetail);
			product.setCategory(category);
			product.setProductname(productname);
			product.setPrice(price);
			product.setDescription(description);
			product.setProductimg(productimg);
			product.setSex(sex);
			
			productservice.AddProduct(product);
		
		} catch (JsonMappingException e) {
			
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			
			e.printStackTrace();
		}
		
	}
	
	@PostMapping(path="GetListProductFromId",produces ="application/json; charset=UTF-8")
	@ResponseBody
	public JSON_Product GetListProductFromId( @RequestParam int idproduct){
		JSON_Product json_Product= new JSON_Product();

		Product products= productservice.GetProductDetail(idproduct);

		json_Product.setIdproduct(products.getIdproduct());
		json_Product.setProductname(products.getProductname());
		json_Product.setPrice(products.getPrice());
		json_Product.setDescription(products.getDescription());
		json_Product.setSex(products.getSex());
		json_Product.setProductimg(products.getProductimg());
		
		Category category= new Category();
		category.setIdcategory(products.getCategory().getIdcategory());
		category.setCategoryname(products.getCategory().getCategoryname());
		
		json_Product.setCategory(products.getCategory());
		
		Set<ProductDetail> listproductdetail =  new HashSet<ProductDetail>();
		
		for (ProductDetail value : products.getListproductdetail()) {
			ProductDetail productdetail =  new ProductDetail();
			
			productdetail.setIdproductdetail(value.getIdproductdetail());
			
			ProductColor productcolor = new ProductColor();
			productcolor.setIdproductcolor(value.getProductcolor().getIdproductcolor());
			productcolor.setProductcolorname(value.getProductcolor().getProductcolorname());
			
			productdetail.setProductcolor(productcolor);
			
			ProductSize productsize =  new ProductSize();
			productsize.setIdproductsize(value.getProductsize().getIdproductsize());
			productsize.setProductsizename(value.getProductsize().getProductsizename());
			
			productdetail.setProductsize(productsize);
			productdetail.setAmount(value.getAmount());
			listproductdetail.add(productdetail);
		}
		
		json_Product.setListproductdetail(listproductdetail);
		System.out.print(json_Product.getListproductdetail());
		return json_Product;
	}
	
	
	@PostMapping("UpdateProduct")
	@ResponseBody
	public void UpdateProduct(@RequestParam String dataJson) {
		ObjectMapper objectmapper = new ObjectMapper();
		JsonNode jsonObject;
		
		try {
			Product product =new Product();
			jsonObject= objectmapper.readTree(dataJson);
			
			Category category = new Category();
			
			category.setIdcategory(jsonObject.get("category").asInt());
			
			JsonNode jsonDetail = jsonObject.get("listproductdetail");
			Set<ProductDetail> listDetail= new HashSet<ProductDetail>();
			
			for (JsonNode objectDetail : jsonDetail) {
				
				ProductDetail productDetail= new ProductDetail();
				
				ProductColor productColor= new ProductColor();
				productColor.setIdproductcolor(objectDetail.get("productcolor").asInt());
				
				ProductSize productSize= new ProductSize();
				productSize.setIdproductsize(objectDetail.get("productsize").asInt());
				
				productDetail.setProductcolor(productColor);
				productDetail.setProductsize(productSize);
				productDetail.setAmount(objectDetail.get("amount").asInt());
				
				
				listDetail.add(productDetail);
			}
			
			String productname= jsonObject.get("productname").asText();
			String price = jsonObject.get("price").asText();
			String description = jsonObject.get("description").asText();
			String sex = jsonObject.get("sex").asText();
			String productimg=jsonObject.get("productimg").asText();
			int idproduct=jsonObject.get("idproduct").asInt();
			
			product.setListproductdetail(listDetail);
			product.setCategory(category);
			product.setProductname(productname);
			product.setPrice(price);
			product.setDescription(description);
			product.setProductimg(productimg);
			product.setSex(sex);
			product.setIdproduct(idproduct);
			
			
			productservice.UpdateProduct(product);
		
		} catch (JsonMappingException e) {
			
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			
			e.printStackTrace();
		}
		
	}
	
}
