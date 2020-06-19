package com.duc.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class OrderDetailId implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int idorder;
	int idproductdetail;
	public int getIdorder() {
		return idorder;
	}
	public void setIdorder(int idorder) {
		this.idorder = idorder;
	}
	public int getIdproductdetail() {
		return idproductdetail;
	}
	public void setIdproductdetail(int idproductdetail) {
		this.idproductdetail = idproductdetail;
	}
	
}
