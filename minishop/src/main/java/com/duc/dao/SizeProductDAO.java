package com.duc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.SizeProductImp;

import com.duc.entity.ProductSize;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SizeProductDAO implements SizeProductImp{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<ProductSize> GetListSizeProduct() {
		Session session=sessionFactory.getCurrentSession();
		
		String query = "from productsize ";
		List<ProductSize> listproductsize =session.createQuery(query).getResultList();
		return listproductsize;
	}
}
