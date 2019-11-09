package com.qiao.example.service.impl;

import com.qiao.example.dao.UserDao;
import com.qiao.example.pojo.User;
import com.qiao.example.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public User login(String userCode, String userPassword) throws Exception {

        User user = null;

        user = userDao.getLoginUser(userCode);

        if (user!=null){
            if (!user.getPassWord().equals(userPassword)){
                user = null;
            }
        }
        return user;
    }
}
