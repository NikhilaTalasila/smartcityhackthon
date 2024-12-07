package com.klu.service;

import com.klu.model.Customer;

public interface CustomerService {
	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password);
	public String updateCustomer(Customer customer);
	

}
