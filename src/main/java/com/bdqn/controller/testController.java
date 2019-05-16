package com.bdqn.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
    @RequestMapping("/login")
    public String looor() {
        return "userlogin.jsp";
    }
}
