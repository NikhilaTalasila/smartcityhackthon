package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.klu.model.Admin;
import com.klu.model.City;
import com.klu.model.Contactus;
import com.klu.model.Customer;
import com.klu.service.AdminService;
import com.klu.service.ContactService;
import com.klu.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ContactService contactService;
	@Autowired
	private AdminService adminService;
	
	@GetMapping("")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
		
	}
	@GetMapping("customerreg")
	public ModelAndView customerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerreg");
		return mv;
		
	}
	@GetMapping("customerhome")
	public ModelAndView customerhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerhome");
		return mv;
		
	}
	@GetMapping("customerprofile")
	public ModelAndView customerprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerprofile");
		return mv;
		
	}
    
	@PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request) {
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String location = request.getParameter("clocation");
		String contact = request.getParameter("ccontact");
		String password = request.getParameter("cpwd");

		Customer customer = new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateOfBirth(dob);
		customer.setEmail(email);
		customer.setLocation(location);
		customer.setContact(contact);
		customer.setPassword(password);
		
		String message =customerService.customerRegistration(customer);
		ModelAndView mv= new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message",message);
		return mv;
		
		

		
	}
	@GetMapping("customerlogin")
	public ModelAndView customerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
		
	}
	
	@PostMapping("checkcustomerlogin")
    public ModelAndView checkcustomerlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");

       Customer customer=customerService.checkCustomerLogin(cemail, cpwd);
        if (customer != null) {
        	HttpSession session=request.getSession();
        	session.setAttribute("customer", customer);
            mv.setViewName("customerhome");
        } else {
            mv.setViewName("customerlogin");
            mv.addObject("message", "Login Failed! Please check your credentials.");
        }  
        return mv;
    }
	@GetMapping("updateprofile")
	public ModelAndView updateprofile() {
		ModelAndView mv = new ModelAndView("updateprofile");
		return mv;
		
	}
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		int id=Integer.parseInt(request.getParameter("cid"));
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob = request.getParameter("cdob");
		String location = request.getParameter("clocation");
		String contact = request.getParameter("ccontact");
		String password = request.getParameter("cpwd");

		Customer customer = new Customer();
		customer.setId(id);
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateOfBirth(dob);
		customer.setLocation(location);
		customer.setContact(contact);
		customer.setPassword(password);
		
		customerService.updateCustomer(customer);
		mv.setViewName("customerlogin");
		return mv;
		
	}
	

	
	@GetMapping("contactus")
	public ModelAndView contactus(
			HttpServletRequest request ,@RequestParam(name = "city", required = false, defaultValue = "default") String cityName) {
		
		ModelAndView mv = new ModelAndView("contactus");
		mv.addObject("cityname", cityName);
		return mv;
	}
@PostMapping("contact")
	public ModelAndView contactusbackend(@RequestParam("city") String city, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String comment = request.getParameter("comment");

			Contactus cu = new Contactus();
			cu.setName(name);
			cu.setEmail(email);
			cu.setComment(comment);

			msg = contactService.insert(cu);
			mv.setViewName("contactus");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("contactus");
			mv.addObject("message", msg);
		}
		return mv;
	}

	@PostMapping("contacthome")
	public ModelAndView contactusbackendhome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String comment = request.getParameter("comment");

			Contactus cu = new Contactus();
			cu.setName(name);
			cu.setEmail(email);
			cu.setComment(comment);

			msg = contactService.insert(cu);
			mv.setViewName("index");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("index");
			mv.addObject("message", msg);
		}
		return mv;
	}
	 
	@GetMapping("temples")
	public ModelAndView temples() {
		ModelAndView mv = new ModelAndView("temples");
		return mv;
	}
	

	
	@GetMapping("customerlogout")
	
	public ModelAndView customerlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
		
	}
	

}