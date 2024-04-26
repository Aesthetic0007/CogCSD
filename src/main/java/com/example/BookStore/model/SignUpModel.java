package com.example.BookStore.model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
@Component
public class SignUpModel {
	
	@Id
	private String userName;
	private String password;
	private String customerName;
	private String customerEmail;
	private String customerNumber;
	private String role;
	
	public SignUpModel(String userName, String password, String customerName, String customerEmail,
			String customerNumber,String role) {
		super();
		this.userName = userName;
		this.password = password;
		this.customerName = customerName;
		this.customerEmail = customerEmail;
		this.customerNumber = customerNumber;
		this.role = role;
	}
	
	public SignUpModel() {
		
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerNumber() {
		return customerNumber;
	}

	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "SignUpModel [userName=" + userName + ", password=" + password + ", customerName=" + customerName
				+ ", customerEmail=" + customerEmail + ", customerNumber=" + customerNumber + ", role=" + role + "]";
	}

	

	

}
