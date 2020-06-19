package com.duc.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity(name="promotion")
public class Promotion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idpromotion;
	String promotionname;
	String starttime;
	String endtime;
	String description;
	String promotionimg;
	int discount;
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="promotiondetail",
	joinColumns ={@JoinColumn(name="idpromotion",referencedColumnName ="idpromotion" )},
	inverseJoinColumns = {@JoinColumn(name="idproduct",referencedColumnName ="idproduct" )})
	Set<Product> listproduct;
	
	public Set<Product> getListproduct() {
		return listproduct;
	}
	public void setListproduct(Set<Product> listproduct) {
		this.listproduct = listproduct;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getIdpromotion() {
		return idpromotion;
	}
	public void setIdpromotion(int idpromotion) {
		this.idpromotion = idpromotion;
	}
	public String getPromotionname() {
		return promotionname;
	}
	public void setPromotionname(String promotionname) {
		this.promotionname = promotionname;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPromotionimg() {
		return promotionimg;
	}
	public void setPromotionimg(String promotionimg) {
		this.promotionimg = promotionimg;
	}
}
