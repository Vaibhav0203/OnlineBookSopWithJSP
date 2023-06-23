package com.sunbeam.beans;

import com.sunbeam.daos.Customer;
import com.sunbeam.daos.CustomerDao;

public class LoginBeans {
	
	public LoginBeans() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String email;
	private String password;
	private Customer cust;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	
	public void isValidate() {
		// TODO Auto-generated method stub
		this.cust = null;
		try {
			CustomerDao Dao = new CustomerDao();
			Customer dbCust = Dao.findByEmail(this.email);
			if(dbCust !=null && dbCust.getPassword().equals(this.password))
				this.cust = dbCust;
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
