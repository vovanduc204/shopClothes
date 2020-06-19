package com.duc.dao;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.ConfirmationTokenImp;
import com.duc.entity.ConfirmationToken;
import com.duc.entity.Employee;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ConfirmationTokenDAO implements ConfirmationTokenImp{

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Transactional
	public boolean AddConfirmationToken(ConfirmationToken confirmationtoken) {
		Session session=sessionFactory.getCurrentSession();
		int idconfirm=(Integer)session.save(confirmationtoken);
		if (idconfirm>0) {
			return true;
		}else {
			return false;
		}
	}

	@Transactional
	public ConfirmationToken FindByConfirmationToken(String confirmationtoken) {
		Session session=sessionFactory.getCurrentSession();
		String selectQuery = "FROM confirmationtoken WHERE confirmationToken = :confirmationtoken";
		Query query = session.createQuery(selectQuery);
		query.setParameter("confirmationtoken", confirmationtoken);
		ConfirmationToken confirmationToken=null;
		try {
			confirmationToken=(ConfirmationToken) query.getSingleResult();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if (confirmationToken==null) {
			return null;
		}else {
			return confirmationToken;
		}
//		if (confirmToken==null) {
//			return null;
//		}else {
//			return confirmToken;
//		}
	}
}
