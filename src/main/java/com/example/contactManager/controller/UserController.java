package com.example.contactManager.controller;

import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.repository.entity.user.UserDTO;
import com.example.contactManager.service.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping({"/login", "/"})
    public String loginUser() {
        return "login";
    }


    @GetMapping("/register")
    public String getRegistrationPage() {
        return "addUser";
    }

    @PostMapping("/register")
    public String createUser(@Valid UserDTO userDTO, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("createUser", userDTO);
            return "addUser";
        } else {
            userService.createUser(userDTO);
            return "login";
        }
    }

    @GetMapping("/user/")
    public String getUserProfile(Model model, Authentication authentication) {
        User user = userService.getUserById(userService.getCurrentUser(authentication.getName()).getId());
        model.addAttribute("user", user);
        return "userProfile";
    }

    @PostMapping("/user/edit/")
    public RedirectView postUserProfile(Authentication authentication, User newUser) {
        userService.editUser(userService.getCurrentUser(authentication.getName()).getId(), newUser);
        return new RedirectView("/user/{id}");
    }

    @GetMapping("/user/edit/")
    public String getUserEdit(Authentication authentication, Model model) {
        User user = userService.getUserById((userService.getCurrentUser(authentication.getName()).getId()));
        model.addAttribute("user", user);
        return "editUser";
    }
}
