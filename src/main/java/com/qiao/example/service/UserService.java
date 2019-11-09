package com.qiao.example.service;

import com.qiao.example.pojo.User;

public interface UserService {


    /**
     * 用户登录
     * @param userCode
     * @param userPassword
     * @return
     * @throws Exception
     */
    public User login(String userCode,String userPassword) throws Exception;
}
