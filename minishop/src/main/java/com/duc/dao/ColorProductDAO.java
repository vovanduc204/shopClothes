package com.duc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.ColorProductImp;
import com.duc.entity.ProductColor;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ColorProductDAO implements ColorProductImp{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public List<ProductColor> GetListProductColor() {
			Session session=sessionFactory.getCurrentSession();
			
			String query = "from productcolor ";
			List<ProductColor> listproductcolor =session.createQuery(query).getResultList();
			return listproductcolor;
		}
}
