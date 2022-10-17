package com.example.contactManager.controller;

import com.example.contactManager.repository.entity.contact.Contact;
import com.example.contactManager.repository.entity.contact.ContactDTO;
import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.service.ContactService;
import com.example.contactManager.service.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ContactController {

    private ContactService contactService;
    private UserService userService;
    public ContactController(ContactService contactService, UserService userService) {
        this.contactService = contactService;
        this.userService = userService;
    }

    /* récuperer l'utilisateur connecté -> chercher ses contacts -> addattribute -> les afficher */

    @GetMapping("/contacts/")
    public String getContactList(Model model, Authentication authentication ){
        model.addAttribute("contacts", contactService.getAllContactsOfUser(userService.getCurrentUser(authentication.getName()).getId()));
        return "contactList";
    }

    @GetMapping("/contacts/add")
    public String getContactPage(){
        return "addContact";
    }

    @PostMapping("/contacts/add")
    public RedirectView postContactPage(ContactDTO contactDTO, Authentication authentication){
        contactService.createContact(contactDTO, userService.getCurrentUser(authentication.getName()).getId());
        return new RedirectView("/contacts/");
    }
}
