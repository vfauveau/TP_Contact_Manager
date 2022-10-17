package com.example.contactManager.service;

import com.example.contactManager.exceptions.UserNotFoundException;
import com.example.contactManager.repository.entity.user.User;
import com.example.contactManager.repository.entity.user.UserDTO;
import com.example.contactManager.repository.entity.user.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(userDTO.getPassword());
        newUser.setPassword(encodedPassword);
        this.userRepository.save(newUser);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id).orElseThrow(() -> new UserNotFoundException(id));
    }

    public void editUser(Long id, User editedUser) {
        User user = this.userRepository.findById(id).get();
        user = editedUser;
        this.userRepository.save(user);
    }

    public User getCurrentUser(String email) {
        return this.userRepository.findUserByEmail(email);
    }
}
