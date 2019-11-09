package com.qiao.example.api;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface WeatherServiceInter {

    @WebMethod
    public String getWeatherByCityname(String name);
}
