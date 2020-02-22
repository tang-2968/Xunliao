package com.nf.tang.service;

import com.nf.tang.entity.UserInfo;

import java.util.List;

public interface UserInfoService {
    void addUserInfo(UserInfo userInfo);
    void delUserInfo(String id);
    void updUserInfo(UserInfo userInfo);
    UserInfo selUser(String u_loginId);
    List<UserInfo> getAll();
    List<UserInfo> fuzzyquery(String name);
}
