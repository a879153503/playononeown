package com.qiao.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/index")
public class IndexController {

    @RequestMapping(value = "/welcome")
    @ResponseBody
    public String welcome(){

        return "welcome";
    }
}
