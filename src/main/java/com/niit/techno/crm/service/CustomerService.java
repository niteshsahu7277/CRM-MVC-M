package com.niit.techno.crm.service;
import java.util.List;

import com.niit.techno.crm.model.Customer;

public interface CustomerService {

	public void saveCustomer(Customer theCustomer);
	
	public List<Customer> getCustomers();
	public Customer getCustomer(int theId);
}
