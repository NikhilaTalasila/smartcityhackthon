package com.klu.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;

import com.klu.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.awt.PageAttributes.MediaType;
import java.io.IOException;
import java.nio.charset.IllegalCharsetNameException;
import java.sql.SQLException;
import java.util.List;
import java.sql.Blob;

import javax.sql.rowset.serial.SerialException;

import com.klu.service.AdminService;
import com.klu.service.ContactService;

import jakarta.servlet.http.HttpServletRequest;




@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private ContactService contactService;


    @GetMapping("adminlogin")
    public ModelAndView adminlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }
    @GetMapping("adminhome")
    public ModelAndView adminhome() {
        ModelAndView mv = new ModelAndView("adminhome");
        long count=adminService.customercount();
        mv.addObject("count",count);
        return mv;
    }

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.checkAdminLogin(auname, apwd);
        if (admin != null) {
            mv.setViewName("adminhome");
            long count=adminService.customercount();
            mv.addObject("count",count);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed! Please check your credentials.");
        }
        return mv;
    }
    @GetMapping("viewallcustomers")
    public ModelAndView viewallcustomers() {
    	ModelAndView mv= new ModelAndView();
    	mv.setViewName("viewallcustomers");
    	long count=adminService.customercount();
        mv.addObject("count",count);
    	List<Customer>customers=adminService.viewAllCustomers();
    	mv.addObject("customerlist",customers);
    	return mv;
    	
    }
    
    @GetMapping("deletecustomer")
    public ModelAndView deletecustomer() {
    	ModelAndView mv= new ModelAndView();
    	mv.setViewName("deletecustomer");
    	List<Customer>customers=adminService.viewAllCustomers();
    	mv.addObject("customerlist",customers);
    	return mv;
    	
    }
    
    @GetMapping("delete")
    public String delete(@RequestParam int id) {
    	adminService.deleteCustomer(id);
    	return "redirect:/deletecustomer";
    	
    	
    }
    @GetMapping("viewcustomerbyid")
    public ModelAndView viewcustomerbyid() {
    	ModelAndView mv = new ModelAndView();
    	List<Customer>customers=adminService.viewAllCustomers();
    	mv.addObject("customerlist",customers);
        
        mv.setViewName("viewcustomerbyid");
        return mv;
    }
    
    @PostMapping("displaycustomer")
    public ModelAndView displaycustomer(HttpServletRequest request) {
    	int id=Integer.parseInt(request.getParameter("id"));
    	Customer customer=adminService.displayCustomerByid(id);
    	ModelAndView mv=new ModelAndView("displaycustomer");
    	mv.addObject("c",customer);
    	return mv;
    	
    	
    }
    @GetMapping("addcity")
    public String addcity() 
    {
    	return "addcity";
    }
    
   
    
    
    
    @PostMapping("insertcity")
    public ModelAndView insertcity(HttpServletRequest request,@RequestParam("ciimage")MultipartFile file) throws IOException, SerialException, SQLException {
    	String name = request.getParameter("ciname");
    	String state = request.getParameter("cistate");
    	String country = request.getParameter("cicountry");
    	String publicServices = request.getParameter("cipublicServices");
    	String amenities = request.getParameter("ciamenities");
    	String infrastructure = request.getParameter("ciinfrastructure");
    	byte[] bytes= file.getBytes();
     Blob blob=new javax.sql.rowset.serial.SerialBlob(bytes);
     
     City ci=new City();
     ci.setName(name);
     ci.setState(state);
     ci.setCountry(country);
     ci.setPublicServices(publicServices);
     ci.setAmenities(amenities);
     ci.setInfrastructure(infrastructure);
     ci.setImage(blob);
     
     String message=adminService.addCity(ci);
     
     ModelAndView mv=new ModelAndView();
     mv.setViewName("citysuccess");
     mv.addObject("message", message);
     return mv;

    	
    	
    }
    @GetMapping("viewallcities")
    public ModelAndView viewallcities() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewallcities");
    	List<City>cities=adminService.viewAllCities();
    	mv.addObject("cities", cities);
    	return mv;
    }
    @GetMapping("viewcitydetails")
    public ModelAndView viewCityDetails(@RequestParam("id") int id) {
        // Fetch city details by ID
        City city = adminService.displayCityById(id);
        ModelAndView mv = new ModelAndView("viewcitydetails"); // Corresponds to a JSP file named 'viewcitydetails.jsp'
        mv.addObject("city", city);
        return mv;
    }

    @GetMapping("/displaycityimage")
    public ResponseEntity<byte[]> displayCityImage(@RequestParam("id") int id) {
        try {
            // Fetch city by ID
            City city = adminService.displayCityById(id);
            if (city == null || city.getImage() == null) {
                // Return 404 if city or image is not found
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

            // Convert Blob to byte array
            Blob imageBlob = city.getImage();
            byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());

            // Return image bytes with explicit content type
            return ResponseEntity.ok()
                    .header("Content-Type", "image/jpeg")
                    .body(imageBytes);

        } catch (SQLException ex) {
            // Log exception and return 500 response
            ex.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    
    @GetMapping("deletecity")
    public ModelAndView deletecity() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletecity");
        List<City> cities = adminService.viewAllCities();
        mv.addObject("citieslist", cities);
        return mv;
    }

    @GetMapping("deletec")
    public String deleteCity(@RequestParam int id) {
        // Call the service layer to delete the city by ID
        adminService.deleteCity(id);
        return "redirect:/deletecity"; // Redirect to deletecity page to refresh the list
    }
    @GetMapping("viewqueries")
	public ModelAndView viewqueries(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewqueries");
		List<Contactus> clist = contactService.viewallcontactus();
		mv.addObject("clist", clist);		
		return mv;		
	}
    
    
    
    
}
