package com.qiao.example.controller;

import com.qiao.example.pojo.User;
import com.qiao.example.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class LoginController {

    @Resource
    private UserService userService;

    @RequestMapping(value = "/login")
//    @RequestParam("name") String name,@RequestParam("psd") String psd
    public String login(String username, String password, HttpSession session, HttpServletRequest request) throws Exception{

        User user = userService.login(username,password);

        if (user==null){
            request.setAttribute("error","用户名或者密码不正确");
            return"login";
        }else {
            return "redirect:index";
        }
    }

    @RequestMapping(value = "/index")
    public String goIndex(){

        return "index";
    }
}
