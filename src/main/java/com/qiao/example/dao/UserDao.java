package com.qiao.example.dao;

import com.qiao.example.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

    /**
     * 通过userCode获取user
     * @param userCode
     * @return
     * @throws Exception
     */
    public User getLoginUser(@Param("userCode") String userCode) throws Exception;
}
