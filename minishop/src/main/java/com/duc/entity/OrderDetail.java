package com.duc.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name="orderdetail")
public class OrderDetail {
	
	@EmbeddedId
	OrderDetailId orderDetailid;
	int amount;
	String price;
	public OrderDetailId getOrderDetailid() {
		return orderDetailid;
	}
	public void setOrderDetailid(OrderDetailId orderDetailid) {
		this.orderDetailid = orderDetailid;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
}
