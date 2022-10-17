package com.example.contactManager.service;

import com.example.contactManager.repository.entity.contact.Contact;
import com.example.contactManager.repository.entity.contact.ContactRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    private ContactRepository contactRepository;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public List<Contact> getAllContacts(){
        return (List<Contact>) this.contactRepository.findAll();
    }

    public List<Contact> getAllContactsOfUser(Long id){
        return this.contactRepository.findContactsByUser_Id(id);
    }
}
