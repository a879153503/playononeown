package com.qiao.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/index")
public class IndexController {

    @RequestMapping(value = "/welcome")
    public String welcome(){
        return "welcome";
    }

    @RequestMapping(value = "/echarts")
    @ResponseBody
    public List getChartsData(HttpServletResponse response){

        List<Integer> ls = new ArrayList<>();
        ls.add(820);
        ls.add(932);
        ls.add(901);
        ls.add(934);
        ls.add(1290);
        ls.add(1330);
        ls.add(4200);
        return ls;
    }
}
