package com.nf.tang.dao;

import com.nf.tang.entity.UserInfo;

import java.util.List;

public interface UserInfoDao {
    void addUserInfo(UserInfo userInfo);
    void delUserInfo(String id);
    void updUserInfo(UserInfo userInfo);
    UserInfo selUser(String u_loginId);
    List<UserInfo> getAll();
    List<UserInfo> fuzzyquery(String name);
}
