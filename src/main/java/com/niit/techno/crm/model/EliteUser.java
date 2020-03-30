package com.niit.techno.crm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="elite")
public class EliteUser {
	@Column(name="phone")
	private String phoneNo;
	@Column(name = "password")
	private String password;
	@Id
	@Column(name="id")
	private int id;
	public EliteUser() {}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	}
