package com.duc.entity;

import java.util.Set;

public class JSON_Product {
	int idproduct;
	String productname;
	String price;
	String description;
	String productimg;
	String sex;
	Category category;
	Set<ProductDetail> listproductdetail;
	Set<Promotion> listpromotion;
	public int getIdproduct() {
		return idproduct;
	}
	public void setIdproduct(int idproduct) {
		this.idproduct = idproduct;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getProductimg() {
		return productimg;
	}
	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Set<ProductDetail> getListproductdetail() {
		return listproductdetail;
	}
	public void setListproductdetail(Set<ProductDetail> listproductdetail) {
		this.listproductdetail = listproductdetail;
	}
	public Set<Promotion> getListpromotion() {
		return listpromotion;
	}
	public void setListpromotion(Set<Promotion> listpromotion) {
		this.listpromotion = listpromotion;
	}
}
