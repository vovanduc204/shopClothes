package com.duc.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="productsize")
public class ProductSize {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idproductsize;
	String productsizename;
	public int getIdproductsize() {
		return idproductsize;
	}
	public void setIdproductsize(int idproductsize) {
		this.idproductsize = idproductsize;
	}
	public String getProductsizename() {
		return productsizename;
	}
	public void setProductsizename(String productsizename) {
		this.productsizename = productsizename;
	}
}
