package com.klu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Customer;
import com.klu.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
	 @Autowired
	    private CustomerRepository customerRepository;

	 @Override
	 public String customerRegistration(Customer customer) {
	     // Check if the email already exists by counting records with that email
	     long customerCount = customerRepository.countByEmail(customer.getEmail());

	     if (customerCount > 0) {
	         return "Email already exists.";  // If the email is found, show a message
	     }
	     
	  // Check for duplicate phone number
	     if (customerRepository.countByPhoneNumber(customer.getContact()) > 0) {
	         return "Phone number already exists.";
	     }

	     // If email doesn't exist, save the new customer
	     customerRepository.save(customer);
	     return "Customer Registered Successfully";
	 }
	 

	    @Override
	    public Customer checkCustomerLogin(String email, String password) {
	        return customerRepository.checkCustomerLogin(email, password);
	    }
	    

	    @Override
	    public String updateCustomer(Customer customer) {
	        Customer c = customerRepository.findById(customer.getId()).get();
	        c.setContact(customer.getContact());
	        c.setDateOfBirth(customer.getDateOfBirth());
	        c.setGender(customer.getGender());
	        c.setLocation(customer.getLocation());
	        c.setName(customer.getName());
	        c.setPassword(customer.getPassword());
	        customerRepository.save(c);
	        return "Customer Updated Successfully";
	    }
	

}
