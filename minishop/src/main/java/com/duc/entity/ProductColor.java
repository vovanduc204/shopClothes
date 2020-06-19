package com.duc.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="productcolor")
public class ProductColor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idproductcolor;
	String productcolorname;
	public int getIdproductcolor() {
		return idproductcolor;
	}
	public void setIdproductcolor(int idproductcolor) {
		this.idproductcolor = idproductcolor;
	}
	public String getProductcolorname() {
		return productcolorname;
	}
	public void setProductcolorname(String productcolorname) {
		this.productcolorname = productcolorname;
	}
	
}
