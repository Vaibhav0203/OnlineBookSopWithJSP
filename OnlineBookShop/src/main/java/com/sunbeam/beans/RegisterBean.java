package com.sunbeam.beans;

import java.util.List;

import com.sunbeam.daos.Customer;
import com.sunbeam.daos.CustomerDao;

public class RegisterBean {
	
	public RegisterBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String id,name,password,mobile,address,birth;
	private List<Customer> cust;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public List<Customer> getCust() {
		return cust;
	}
	public void setCust(List<Customer> cust) {
		this.cust = cust;
	} 
	
	public void registerUser()
	{
		try {
			CustomerDao Dao = new CustomerDao();
			
			cust = Dao.save(null)
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	

}
