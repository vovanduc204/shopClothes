package com.duc.daoimp;

import java.util.List;

import com.duc.entity.Product;
import com.duc.entity.ProductDetail;

public interface ProductImp {
	List<Product> listProductLimit(int start);
	Product GetProductDetail(int idproduct);
	List<Product> listProductCategory(int idcategory);
	boolean DeleteProductId(int idproduct);
	boolean AddProduct(Product product);
	boolean UpdateProduct(Product product);
	List<Product> listProductRelated(int idproduct, int idcategory);
	List<Product> listProductByPage(int pageid, int total, int idcategory);
	int CountProductByPage(int idcategory);
}
