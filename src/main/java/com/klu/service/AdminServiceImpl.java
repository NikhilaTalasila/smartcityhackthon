package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Admin;
import com.klu.model.City;
import com.klu.model.Customer;
import com.klu.repository.AdminRepository;
import com.klu.repository.CityRepository;
import com.klu.repository.CustomerRepository;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private CityRepository cityRepository;

	@Override
	public List<Customer> viewAllCustomers() {
		return customerRepository.findAll();
		
		
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
		
	}

	@Override
	public long customercount() {
		
		return customerRepository.count();
	}

	@Override
	public String deleteCustomer(int id) {
		// TODO Auto-generated method stub
		customerRepository.deleteById(id);
		return "Customer deleted Successfully";
	}

	@Override
	public Customer displayCustomerByid(int id) {
		return customerRepository.findById(id).get();
	}

	@Override
	public String addCity(City city) {
		cityRepository.save(city);
		return "City Added Successfully";
	}

	@Override
	public List<City> viewAllCities() {
		
		return cityRepository.findAll();
	}

	@Override
	public City displayCityById(int cid) {
		return cityRepository.findById(cid).get();
	}

	@Override
	public String deleteCity(int id) {
		// TODO Auto-generated method stub
		return null;
	}




	
	
    

}
