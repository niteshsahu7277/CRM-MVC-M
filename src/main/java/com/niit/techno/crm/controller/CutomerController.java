package com.niit.techno.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.techno.crm.model.Customer;
import com.niit.techno.crm.service.CustomerService;


@Controller
@RequestMapping("/customer")   //@RequestMapping using in the class level
public class CutomerController {

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="/showForm")    //@RequestMapping using in the method level ,it has default GET method
	public String showFormForAdd(ModelMap theModel)
	{
		Customer theCustomer=new Customer();
		theModel.addAttribute("customer",theCustomer);
	
		return "customer-form";  //return model + view name
	}
	
	
	@PostMapping(value="/saveCustomer")    
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer)
	{
		customerService.saveCustomer(theCustomer);
		
		return "redirect:/customer/list";  
	}

	
	@GetMapping("/list") // @GetMapping - method level , default GET method
	public String listCustomers(ModelMap theModel) {
	List<Customer> theCustomers = customerService.getCustomers();
	theModel.addAttribute("customers", theCustomers);
	return "list-customers";
	}

}
