package com.duc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.OrderdetailImp;
import com.duc.entity.OrderDetail;
import com.duc.entity.OrderDetailId;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class OrderdetailDAO implements OrderdetailImp{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean AddOrderDetail(OrderDetail orderdetail) {
		Session session = sessionFactory.getCurrentSession();
		OrderDetailId id=(OrderDetailId) session.save(orderdetail);
		if ( id != null) {
			return true;
		}else {
			return false;
		}
		
	}

}
