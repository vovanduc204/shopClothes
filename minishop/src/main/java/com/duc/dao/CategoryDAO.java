package com.duc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.CategoryImp;
import com.duc.entity.Category;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CategoryDAO implements CategoryImp{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<Category> GetCategory() {
		Session session=sessionFactory.getCurrentSession();
		String query="from category";
		 List<Category> listcategory = session.createQuery(query).getResultList();
		return listcategory;
	}


}
