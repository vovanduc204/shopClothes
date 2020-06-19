package com.duc.controller;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.duc.entity.Cart;
import com.duc.entity.OrderDetail;
import com.duc.entity.OrderDetailId;
import com.duc.entity.Orders;
import com.duc.service.OrderDetailService;
import com.duc.service.OrderService;

@Controller
@RequestMapping("cart/")
public class CartController {
	
	@Autowired
	OrderService orderservice;
	
	@Autowired
	OrderDetailService orderdetailservice;
	
	@GetMapping
	public String Default(ModelMap modelmap, HttpSession httpsession) {
		if (null!=httpsession.getAttribute("cart")) {
			List<Cart> listcart= (List<Cart>) httpsession.getAttribute("cart");
			modelmap.addAttribute("cartamount",listcart.size());
			modelmap.addAttribute("listcart",listcart);
		}
		return "cart";
	}
	
	@PostMapping
	public String AddOrder(HttpSession httpsession, @RequestParam String customernname, @RequestParam String phone, @RequestParam String deliveryaddress, @RequestParam String formofdelivery, @RequestParam String note) {
		
		
		if (null!=httpsession.getAttribute("cart")) {
			List<Cart> listcart= (List<Cart>) httpsession.getAttribute("cart");
			
			Orders order=new Orders();
			order.setCustomernname(customernname);
			order.setPhone(phone);
			order.setDeliveryaddress(deliveryaddress);
			order.setNote(note);
			order.setFormofdelivery(formofdelivery);
			
			int idorder=orderservice.AddOrder(order);
			if (idorder>0) {
				Set<OrderDetail> listorderdetail=new HashSet<OrderDetail>();
				
				for (Cart cart : listcart) {
					OrderDetailId orderdetailid= new OrderDetailId();
					orderdetailid.setIdproductdetail(cart.getIdproductdetail());
					orderdetailid.setIdorder(order.getIdorder());
					
					OrderDetail orderdetail= new OrderDetail();
					orderdetail.setOrderDetailid(orderdetailid);
					orderdetail.setPrice(cart.getPrice());
					orderdetail.setAmount(cart.getAmount());
					
					orderdetailservice.AddOrderDetail(orderdetail);
				}
				
				order.setListorderdetail(listorderdetail);
				System.out.println("Them thanh cong");
			}else {
				System.out.println("Them that bai");
			}
			
			
			
		}
		
		return "cart";
	}
}
