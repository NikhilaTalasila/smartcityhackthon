package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.model.Contactus;

public interface ContactusRepository extends JpaRepository<Contactus, Integer> {
    // Additional custom queries can be defined here if needed
}
