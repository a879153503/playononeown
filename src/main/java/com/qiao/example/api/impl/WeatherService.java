package com.qiao.example.api.impl;

import com.alibaba.fastjson.JSONObject;
import com.qiao.example.api.WeatherServiceInter;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import java.util.HashMap;
import java.util.Map;

@WebService
public class WeatherService implements WeatherServiceInter {


    @WebResult(name = "return",targetNamespace = "http://impl.api.example.qiao.com/")
    @WebMethod
    @Override
    public String getWeatherByCityname(@WebParam(name = "name",targetNamespace = "http://impl.api.example.qiao.com/") String name) {

        Map map = new HashMap();
        map.put("name","qiaopeng");
        map.put("Id","12");
        map.put("card","card.qiao");
        String result = JSONObject.toJSONString(map);
        System.out.println(result+name);
        return result;
    }
}
