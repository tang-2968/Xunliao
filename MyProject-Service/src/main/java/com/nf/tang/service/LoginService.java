package com.nf.tang.service;

import com.nf.tang.entity.FriendGroups;
import com.nf.tang.entity.Login;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginService {
    List<Login> getAll(int pageNum,int pageSize);
    void addLogin(String account,String password);
    void delLogin(String login);
    Login selLogin(String login);

}
