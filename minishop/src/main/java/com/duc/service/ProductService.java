package com.duc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.ProductDAO;
import com.duc.daoimp.ProductImp;
import com.duc.entity.Product;

@Service
public class ProductService implements ProductImp{

	@Autowired
	ProductDAO productDAO;
		
	public List<Product> listProductLimit(int start) {
		return productDAO.listProductLimit(start);
	}

	public Product GetProductDetail(int idproduct) {
		return productDAO.GetProductDetail(idproduct);
	}

	public List<Product> listProductCategory(int idcategory) {
		return productDAO.listProductCategory(idcategory);
	}

	public boolean DeleteProductId(int idproduct) {
		return productDAO.DeleteProductId(idproduct);
	}

	public boolean AddProduct(Product product) {	
		return productDAO.AddProduct(product);
	}

	public boolean UpdateProduct(Product product) {
		return productDAO.UpdateProduct(product);
	}

	public List<Product> listProductRelated(int idproduct, int idcategory) {
		return productDAO.listProductRelated(idproduct, idcategory);
	}

	public List<Product> listProductByPage(int pageid, int total, int idcategory) {
		return productDAO.listProductByPage(pageid, total, idcategory);
	}

	public int CountProductByPage(int idcategory) {
		
		return productDAO.CountProductByPage(idcategory);
	}
	

}
