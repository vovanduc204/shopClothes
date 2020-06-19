package com.duc.entity;

public class Cart {
	int idproductdetail;
	
	int idproduct;
	int idproductcolor;
	int idproductsize;
	String productname;
	String price;
	String colorname;
	String sizename;
	int amount;
	public int getIdproductdetail() {
		return idproductdetail;
	}
	public void setIdproductdetail(int idproductdetail) {
		this.idproductdetail = idproductdetail;
	}
	public int getIdproduct() {
		return idproduct;
	}
	public void setIdproduct(int idproduct) {
		this.idproduct = idproduct;
	}
	public int getIdproductcolor() {
		return idproductcolor;
	}
	public void setIdproductcolor(int idproductcolor) {
		this.idproductcolor = idproductcolor;
	}
	public int getIdproductsize() {
		return idproductsize;
	}
	public void setIdproductsize(int idproductsize) {
		this.idproductsize = idproductsize;
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
	public String getColorname() {
		return colorname;
	}
	public void setColorname(String colorname) {
		this.colorname = colorname;
	}
	public String getSizename() {
		return sizename;
	}
	public void setSizename(String sizename) {
		this.sizename = sizename;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
