package com.example.contactManager.controller;

import com.example.contactManager.repository.entity.contact.Contact;
import com.example.contactManager.repository.entity.contact.ContactDTO;
import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.service.ContactService;
import com.example.contactManager.service.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/contacts")
public class ContactController {

    private ContactService contactService;
    private UserService userService;

    public ContactController(ContactService contactService, UserService userService) {
        this.contactService = contactService;
        this.userService = userService;
    }

    /* récuperer l'utilisateur connecté -> chercher ses contacts -> addattribute -> les afficher */

    @GetMapping
    public String filterContactListByName(Model model, Authentication authentication, @RequestParam(value = "search", required = false) String name) {

        if (name != null) {
            List<Contact> contactList = contactService.findUserContactsByName(name, name);
            List<Contact> resultList;
            resultList =contactList.stream().filter(contact -> contact.getUser().getId().equals(userService.getCurrentUser(authentication.getName()).getId())).collect(Collectors.toList());
            model.addAttribute("contacts", resultList);
        } else {
            model.addAttribute("contacts", contactService.getAllContactsOfUser(userService.getCurrentUser(authentication.getName()).getId()));
        }
        return "contactList";
    }

    @GetMapping("/add")
    public String getContactPage() {
        return "addContact";
    }

    @PostMapping("/add")
    public RedirectView postContactPage(ContactDTO contactDTO, Authentication authentication) {
        contactService.createContact(contactDTO, userService.getCurrentUser(authentication.getName()).getId());
        return new RedirectView("/contacts/");
    }

    @GetMapping("/edit/{id}")
    public String getContactEdit(@PathVariable("id") Long id, Model model) {
        Contact contact = contactService.findContactById(id);
        model.addAttribute("contact", contact);
        return "editContact";
    }

    @PostMapping("/edit/{id}")
    public RedirectView postUserProfile(@PathVariable("id") Long id, ContactDTO updatedContact, Authentication authentication) {
        contactService.editContact(id, updatedContact, userService.getCurrentUser(authentication.getName()).getId());
        return new RedirectView("/contacts");
    }

    @PostMapping("/delete/{id}")
    public RedirectView postUserProfile(@PathVariable("id") Long id) {
        contactService.deleteContact(id);
        return new RedirectView("/contacts");
    }

}
