package com.duc.dao;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.EmployeeImp;
import com.duc.entity.Employee;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class EmployeeDAO implements EmployeeImp{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean CheckLogin(String email, String password) {
		Session session=sessionFactory.getCurrentSession();
		try {
			Employee employee=(Employee) session.createQuery("from employee where email='"+email+"'and password='"+password+"'"+" and isEnabled=true").getSingleResult();
			if (employee!=null) {
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	@Transactional
	public boolean AddEmployee(Employee employee) {
		Session session=sessionFactory.getCurrentSession();
		int idemployee=(Integer) session.save(employee);
		if (idemployee>0) {
			return true;
		}else {
			return false;
		}
	}

	@Transactional
	public Employee findByEmailIdIgnoreCase(String email) {
		Session session=sessionFactory.getCurrentSession();
		
		String selectQuery = "FROM employee as emp WHERE emp.email = :email";
		Query query = session.createQuery(selectQuery);
		query.setParameter("email", email);
		
		Employee employee=null;
		try {
			employee=(Employee) query.getSingleResult();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		if(employee==null){
		    return null;
		} else {
		    return employee;
		}	
	}

	@Transactional
	public boolean UpdateConfirmEmployee(Employee employee) {
		Session session=sessionFactory.getCurrentSession();
		session.update(employee);
		return false;
	}

}
