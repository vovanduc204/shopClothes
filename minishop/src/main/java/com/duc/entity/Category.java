package com.duc.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idcategory;
	String categoryname;
	String categoryimg;
	
	@OneToMany()
	@JoinColumn(name="idcategory")
	Set<Product> listProduct;
	
	public int getIdcategory() {
		return idcategory;
	}
	public void setIdcategory(int idcategory) {
		this.idcategory = idcategory;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getCategoryimg() {
		return categoryimg;
	}
	public void setCategoryimg(String categoryimg) {
		this.categoryimg = categoryimg;
	}
}
