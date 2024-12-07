package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Contactus;
import com.klu.repository.ContactusRepository;



@Service
public class ContactServiceImpl implements ContactService
{
	@Autowired
	private ContactusRepository contactusRepository;

	public String insert(Contactus c) {
		contactusRepository.save(c);
		return "Your Query has been received & We will get back to you Shortly";

	}


	public List<Contactus> viewallcontactus() {
		
		return contactusRepository.findAll();

	}
}