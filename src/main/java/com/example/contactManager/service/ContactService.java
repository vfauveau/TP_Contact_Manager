package com.example.contactManager.service;

import com.example.contactManager.repository.entity.contact.Contact;
import com.example.contactManager.repository.entity.contact.ContactDTO;
import com.example.contactManager.repository.entity.contact.ContactRepository;
import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.repository.entity.user.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    private ContactRepository contactRepository;
    private UserRepository userRepository;
    private UserService userService;

    public ContactService(ContactRepository contactRepository, UserRepository userRepository, UserService userService) {
        this.contactRepository = contactRepository;
        this.userRepository = userRepository;
        this.userService = userService;
    }

    public List<Contact> getAllContacts(){
        return (List<Contact>) this.contactRepository.findAll();
    }

    public List<Contact> getAllContactsOfUser(Long id){
        return this.contactRepository.findContactsByUser_Id(id);
    }

    public void createContact(ContactDTO contactDTO, Long id) {

        User user = userService.getUserById(id);
        Contact contact = new Contact();
        contact.setFirstName(contactDTO.getFirstName());
        contact.setLastName(contactDTO.getLastName());
        contact.setEmail(contactDTO.getEmail());
        contact.setAdressInfos(contactDTO.getAdressInfos());
        contact.setBirthdate(contactDTO.getBirthdate());
        contact.setEnterprise(contactDTO.getEnterprise());
        contact.setAdressInfos(contactDTO.getAdressInfos());
        contact.setStreet(contactDTO.getStreet());
        contact.setStreetNumber(contactDTO.getStreetNumber());
        contact.setTelephone(contactDTO.getTelephone());
        contact.setNotes(contactDTO.getNotes());
        contact.setRole(contactDTO.getRole());
        contact.setCity(contactDTO.getCity());
        contact.setZipcode(contact.getZipcode());
        contact.setUser(user);
        this.contactRepository.save(contact);
    }
}