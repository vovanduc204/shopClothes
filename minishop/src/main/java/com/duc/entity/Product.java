package com.duc.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


@Entity(name="Product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idproduct;
	String productname;
	String price;
	String description;
	String productimg;
	String sex;
	
	@OneToOne()
	@JoinColumn(name="idcategory")
	Category category;
	
	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name="idproduct")
	Set<ProductDetail> listproductdetail;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="promotiondetail",
	joinColumns ={@JoinColumn(name="idproduct",referencedColumnName ="idproduct" )},
	inverseJoinColumns = {@JoinColumn(name="idpromotion",referencedColumnName ="idpromotion" )})
	Set<Promotion> listpromotion;
	
	
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
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
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

	
}
