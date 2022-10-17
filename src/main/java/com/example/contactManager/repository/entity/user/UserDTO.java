package com.example.contactManager.repository.entity.user;

import com.example.contactManager.repository.entity.contact.Contact;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

public class UserDTO {

    public UserDTO() {
    }

    private String password;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String email;
    @Nullable
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthdate;
    @Nullable
    private String pictureUrl;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
    List<Contact> contactList;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Nullable
    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(@Nullable Date birthdate) {
        this.birthdate = birthdate;
    }

    @Nullable
    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(@Nullable String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public List<Contact> getContactList() {
        return contactList;
    }

    public void setContactList(List<Contact> contactList) {
        this.contactList = contactList;
    }
}
