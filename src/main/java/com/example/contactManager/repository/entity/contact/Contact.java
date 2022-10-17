package com.example.contactManager.repository.entity.contact;

import com.example.contactManager.repository.entity.user.User;

import javax.persistence.*;
import java.util.List;
/* famille */
@Entity
public class Contact {

    public Contact() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany(fetch = FetchType.LAZY, mappedBy = "contactList")
    private List<User> contactUser;

    private String firstName;
    private String lastName;

    private String email;
    private String telephone;
    private String birthdate;
    private String enterprise;
    private String role;
    private String notes;
    private String street;
    private int streetNumber;
    private String adressInfos;

    public List<User> getContactUser() {
        return contactUser;
    }

    public void setContactUser(List<User> contactUser) {
        this.contactUser = contactUser;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getStreetNumber() {
        return streetNumber;
    }

    public void setStreetNumber(int streetNumber) {
        this.streetNumber = streetNumber;
    }

    public String getAdressInfos() {
        return adressInfos;
    }

    public void setAdressInfos(String adressInfos) {
        this.adressInfos = adressInfos;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }



}
