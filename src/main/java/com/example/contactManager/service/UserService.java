package com.example.contactManager.service;

import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.repository.entity.user.UserDTO;
import com.example.contactManager.repository.entity.user.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    public void createUser(UserDTO userDTO) {
        User newUser = new User();
        newUser.setFirstName(userDTO.getFirstName());
        newUser.setLastName(userDTO.getLastName());
        newUser.setEmail(userDTO.getEmail());
        newUser.setPassword(userDTO.getPassword());
        this.userRepository.save(newUser);
    }

}
