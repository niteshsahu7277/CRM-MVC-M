package com.niit.techno.crm.dao;
import java.util.List;

import com.niit.techno.crm.model.Customer;

public interface CustomerDAO {

	public void saveCustomer(Customer theCustomer);
	
	public List<Customer> getCustomers();
	public Customer getCustomer(int theId);
}
