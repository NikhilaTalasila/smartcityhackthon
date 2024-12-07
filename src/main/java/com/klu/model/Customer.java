package com.klu.model;


import jakarta.persistence.*;

@Entity
@Table(name = "customer_table")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id")
    private int id;

    @Column(name = "customer_name", nullable = false)
    private String name;

    @Column(name = "customer_gender", nullable = false)
    private String gender;

    @Column(name = "customer_dateofbirth", nullable = false)
    private String dateOfBirth;

    @Column(name = "customer_email", nullable = false, unique = true)
    private String email;

    @Column(name = "customer_password", nullable = false)
    private String password;

    @Column(name = "customer_location", nullable = false)
    private String location;

    @Column(name = "customer_contact", nullable = false, unique = true)
    private String contact;


    // Getters and Setters
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}

