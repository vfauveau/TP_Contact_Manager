package com.example.contactManager.exceptions;

public class UserNotFoundException extends RuntimeException{

    public UserNotFoundException(long id){
        super("User with " + id + "not found in database");
    }
}
