package com.duc.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="Permissions")
public class Permissions {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int idpermission;
	String permissionname;
	
	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name="idpermission")
	Set<Employee> listemployee;
	
	
	public Set<Employee> getListemployee() {
		return listemployee;
	}
	public void setListemployee(Set<Employee> listemployee) {
		this.listemployee = listemployee;
	}
	public int getIdpermission() {
		return idpermission;
	}
	public void setIdpermission(int idpermission) {
		this.idpermission = idpermission;
	}
	public String getPermissionname() {
		return permissionname;
	}
	public void setPermissionname(String permissionname) {
		this.permissionname = permissionname;
	}
	
}
