package com.stormshop.authentication.controller;

import org.springframework.web.bind.annotation.*;

@RestController
public class AuthenticationController {

    @GetMapping("/test")
    public String test(){
        return "Authentication";
    }

}
