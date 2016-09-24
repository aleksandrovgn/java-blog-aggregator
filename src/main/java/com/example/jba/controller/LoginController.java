package com.example.jba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by george on 24.09.2016.
 */
@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
