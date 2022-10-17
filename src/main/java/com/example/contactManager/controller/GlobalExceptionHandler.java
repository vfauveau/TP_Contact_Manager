package com.example.contactManager.controller;

import com.example.contactManager.exceptions.UserNotFoundException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
    public static final String DEFAULT_ERROR_VIEW = "userNotFound";

    @ExceptionHandler(value = UserNotFoundException.class)
    public String notFoundErrorHandler(Model model, Exception e){
        model.addAttribute("exception" , e);
        return DEFAULT_ERROR_VIEW;
    }
}
