package com.duc.entity;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="confirmationtoken")
public class ConfirmationToken {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idConfirmationToken;
	
	@Column(name="confirmation_token")
	private String confirmationToken;
	
	@Column(name="create_date")
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	
	@OneToOne(targetEntity = Employee.class, fetch = FetchType.EAGER)
	@JoinColumn(nullable = false, name = "idemployee")
    private Employee employee;
	
	public ConfirmationToken() {
		
	}
	
	public ConfirmationToken(Employee employee) {
		this.employee=employee;
		createDate = new Date();
		confirmationToken = UUID.randomUUID().toString();
	}

	public int getIdConfirmationToken() {
		return idConfirmationToken;
	}

	public void setIdConfirmationToken(int idConfirmationToken) {
		this.idConfirmationToken = idConfirmationToken;
	}

	public String getConfirmationToken() {
		return confirmationToken;
	}

	public void setConfirmationToken(String confirmationToken) {
		this.confirmationToken = confirmationToken;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
}
