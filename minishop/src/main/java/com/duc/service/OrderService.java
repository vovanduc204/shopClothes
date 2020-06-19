package com.duc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.OrderDAO;
import com.duc.daoimp.OrderImp;
import com.duc.entity.Orders;

@Service
public class OrderService implements OrderImp{

	@Autowired
	OrderDAO orderdao;
	
	public int AddOrder(Orders order) {
		
		return orderdao.AddOrder(order);
	}
	
}
