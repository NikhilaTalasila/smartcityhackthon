package com.klu.service;

import java.util.List;

import com.klu.model.Admin;
import com.klu.model.City;
import com.klu.model.Customer;

public interface AdminService {
	public List<Customer>viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long customercount();
	public String deleteCustomer(int id);
	public Customer displayCustomerByid(int id);
	
	public String addCity(City city);
	public List<City>viewAllCities();
	public City displayCityById(int cid);
	public String deleteCity(int id);
	
	
	
	
	

}
