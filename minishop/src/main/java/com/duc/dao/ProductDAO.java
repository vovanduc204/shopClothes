package com.duc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.duc.daoimp.ProductImp;
import com.duc.entity.Product;
import com.duc.entity.ProductDetail;


@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ProductDAO implements ProductImp{

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<Product> listProductLimit(int start) {
		Session session=sessionFactory.getCurrentSession();
		List<Product> listProduct=new ArrayList<Product>();
		if (start<0) {
			String query="from Product";
			listProduct = (List<Product>) session.createQuery(query).getResultList();
		}else {
			
			 listProduct = (List<Product>) session.createQuery("from Product").setFirstResult(start).setMaxResults(5).getResultList();
		}
		
		return listProduct;
	}
	
	@Transactional
	public Product GetProductDetail(int idproduct){
		
		Session session=sessionFactory.getCurrentSession();
		String query="from Product p where p.idproduct="+idproduct;
		Product product = (Product) session.createQuery(query).getSingleResult();
		
		return product;
	}

	@Transactional
	public List<Product> listProductCategory(int idcategory) {
		Session session=sessionFactory.getCurrentSession();
		String query="from Product p where p.category.idcategory="+idcategory;
		List<Product> listproduct = (List<Product>) session.createQuery(query).getResultList();
		return listproduct;
	}

	@Transactional
	public boolean DeleteProductId(int idproduct) {
		Session session=sessionFactory.getCurrentSession();
		Product product= session.get(Product.class, idproduct) ;
		
		Set<ProductDetail> productdetail=product.getListproductdetail();
		for (ProductDetail productDetail2 : productdetail) {
			if (productDetail2!=null) {
				session.createQuery("delete orderdetail where idproductdetail="+productDetail2.getIdproductdetail()).executeUpdate();
			}
			
		}
//		session.createQuery("delete promotiondetail where idproduct="+idproduct).executeUpdate();
		session.createQuery("delete productdetail where idproduct="+idproduct).executeUpdate();
		session.createQuery("delete Product where idproduct="+idproduct).executeUpdate();
		return false;
	}

	@Transactional
	public boolean AddProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
	
		int idproduct=(Integer) session.save(product);
		return false;
	}

	@Transactional
	public boolean UpdateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		
		session.update(product);
		return false;
	}

	@Transactional
	public List<Product> listProductRelated(int idproduct, int idcategory) {
		Session session=sessionFactory.getCurrentSession();
		String query="from Product p where p.category.idcategory="+idcategory+"and p.idproduct !="+idproduct;
		List<Product> listproduct = (List<Product>) session.createQuery(query).setMaxResults(8).getResultList();
		return listproduct;
	}

	@Transactional
	public List<Product> listProductByPage(int pageid, int total, int idcategory) {
		Session session=sessionFactory.getCurrentSession();
		String query="from Product p where p.category.idcategory="+idcategory;
		List<Product> listproduct = (List<Product>) session.createQuery(query).setFirstResult(pageid).setMaxResults(total).getResultList();
		return listproduct;
	}

	@Transactional
	public int CountProductByPage(int idcategory) {
		Session session=sessionFactory.getCurrentSession();
		String query="Select count(*) as ct from Product p where p.category.idcategory="+idcategory;
		Query colQuery =session.createQuery(query);
		List<Object> list = colQuery.getResultList();
		long i=(Long) list.get(0);
		return (int) i;
	}
		
	
}
