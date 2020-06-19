package com.duc.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="productdetail")
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idproductdetail;
	
	@OneToOne()
	@JoinColumn(name="idproductsize")
	ProductSize productsize;

	@OneToOne()
	@JoinColumn(name="idproductcolor")
	ProductColor productcolor;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="idproduct")
	Product product;
	
	Integer amount;
    String dateadd;
	public int getIdproductdetail() {
		return idproductdetail;
	}
	public void setIdproductdetail(int idproductdetail) {
		this.idproductdetail = idproductdetail;
	}
	public ProductSize getProductsize() {
		return productsize;
	}
	public void setProductsize(ProductSize productsize) {
		this.productsize = productsize;
	}
	public ProductColor getProductcolor() {
		return productcolor;
	}
	public void setProductcolor(ProductColor productcolor) {
		this.productcolor = productcolor;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getDateadd() {
		return dateadd;
	}
	public void setDateadd(String dateadd) {
		this.dateadd = dateadd;
	}
	
    
}
