package com.klu.model;

import java.sql.Blob;

import jakarta.persistence.*; 

@Entity
@Table(name = "city_table")
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "city_id")
    private int id;

    @Column(name = "city_name", nullable = false, unique = true)
    private String name;

    @Column(name = "state", nullable = false)
    private String state;

    @Column(name = "country", nullable = false)
    private String country;

    @Column(name = "public_services", columnDefinition = "TEXT")
    private String publicServices;

    @Column(name = "amenities", columnDefinition = "TEXT")
    private String amenities;

    @Column(name = "infrastructure", columnDefinition = "TEXT")
    private String infrastructure;

    private Blob image; 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPublicServices() {
        return publicServices;
    }

    public void setPublicServices(String publicServices) {
        this.publicServices = publicServices;
    }

    public String getAmenities() {
        return amenities;
    }

    public void setAmenities(String amenities) {
        this.amenities = amenities;
    }

    public String getInfrastructure() {
        return infrastructure;
    }

    public void setInfrastructure(String infrastructure) {
        this.infrastructure = infrastructure;
    }
    public void setImage(Blob image) {
    	this.image=image;
    	
    }
    public Blob getImage() {
    	return image;
    }
}

