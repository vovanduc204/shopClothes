package com.duc.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.PermissionImp;
import com.duc.entity.Permissions;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class PermissionDAO implements PermissionImp{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<Permissions> listPermissions() {
		Session session=sessionFactory.getCurrentSession();
		List<Permissions> listpermission= new ArrayList<Permissions>();
		String query="from Permissions";
		listpermission = (List<Permissions>) session.createQuery(query).getResultList();
		return listpermission;
	}

}
