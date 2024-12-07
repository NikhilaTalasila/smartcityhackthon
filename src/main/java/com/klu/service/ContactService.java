package com.klu.service;


import java.util.List;

import com.klu.model.Contactus;

public interface ContactService  
{
	public String insert(Contactus c);
	public List<Contactus> viewallcontactus();

}
