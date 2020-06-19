package com.duc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.OrderdetailDAO;
import com.duc.daoimp.OrderdetailImp;
import com.duc.entity.OrderDetail;

@Service
public class OrderDetailService implements OrderdetailImp{

	@Autowired
	OrderdetailDAO orderdetaildao;
	
	public boolean AddOrderDetail(OrderDetail orderdetail) {
		
		return orderdetaildao.AddOrderDetail(orderdetail);
	}

}
