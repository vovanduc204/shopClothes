package com.duc.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="orders")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idorder;
	String customernname;
	String phone;
	String deliveryaddress;
	String datefound;
	Boolean status;
	String formofdelivery;
	String note;
	
	
	@OneToMany
	@JoinColumn(name="idorder")
	Set<OrderDetail> listorderdetail;

	public int getIdorder() {
		return idorder;
	}

	public void setIdorder(int idorder) {
		this.idorder = idorder;
	}

	public String getCustomernname() {
		return customernname;
	}

	public void setCustomernname(String customernname) {
		this.customernname = customernname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDeliveryaddress() {
		return deliveryaddress;
	}

	public void setDeliveryaddress(String deliveryaddress) {
		this.deliveryaddress = deliveryaddress;
	}

	public String getDatefound() {
		return datefound;
	}

	public void setDatefound(String datefound) {
		this.datefound = datefound;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Set<OrderDetail> getListorderdetail() {
		return listorderdetail;
	}

	public void setListorderdetail(Set<OrderDetail> listorderdetail) {
		this.listorderdetail = listorderdetail;
	}
	public String getFormofdelivery() {
		return formofdelivery;
	}

	public void setFormofdelivery(String formofdelivery) {
		this.formofdelivery = formofdelivery;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
