package com.duc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.OrderImp;
import com.duc.entity.Orders;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class OrderDAO implements OrderImp{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public int AddOrder(Orders order) {
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer) session.save(order);
		if ( 0<id ) {
			return id;
		}else {
			return 0;
		}
		
	}
	
}
