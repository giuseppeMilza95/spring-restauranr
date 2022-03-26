package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Burgers;
import com.luv2code.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Burgers> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
}
