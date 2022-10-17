package com.example.contactManager.controller;
import com.example.contactManager.repository.entity.user.UserDTO;
import com.example.contactManager.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/register")
public class UserController {

private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String getRegistrationPage(){
        return "addUser";
    }

    @PostMapping
    public RedirectView postRegistrationPage(UserDTO userDTO){
        userService.createUser(userDTO);
        return new RedirectView("/login");
    }
}
