package com.example.contactManager.controller;

import com.example.contactManager.repository.entity.contact.Contact;
import com.example.contactManager.repository.entity.contact.ContactDTO;
import com.example.contactManager.service.ContactService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ContactController {

    private ContactService contactService;

    public ContactController(ContactService contactService) {
        this.contactService = contactService;
    }

    /* récuperer l'utilisateur connecté -> chercher ses contacts -> addattribute -> les afficher */

    @GetMapping("/contacts/")
    public String getContactList(Model model){
        // Authentication authentication model.addAttribute("contacts", contactService.getAllContacts(userService.getCurrentUser(authentication.getName()).getId()));
        List<Contact> contacts = contactService.getAllContactsOfUser(1L);
        model.addAttribute("contacts" , contacts);
        return "contactList";
    }

    @GetMapping("/contacts/add")
    public String getContactPage(){
        return "addContact";
    }

    @PostMapping("/contacts/add")
    public RedirectView postContactPage(ContactDTO contactDTO){
        contactService.createContact(contactDTO, 1L);
        return new RedirectView("/contacts/");
    }
}
