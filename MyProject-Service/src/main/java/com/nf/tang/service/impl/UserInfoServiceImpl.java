package com.nf.tang.service.impl;

import com.nf.tang.dao.UserInfoDao;
import com.nf.tang.entity.UserInfo;
import com.nf.tang.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoDao userInfoDao;

    public void setUserInfoDao(UserInfoDao userInfoDao) {
        this.userInfoDao = userInfoDao;
    }

    @Override
    public void addUserInfo(UserInfo userInfo) {
        userInfoDao.addUserInfo(userInfo);
    }

    @Override
    public void delUserInfo(String id) {
        userInfoDao.delUserInfo(id);
    }

    @Override
    public void updUserInfo(UserInfo userInfo) {
        userInfoDao.updUserInfo(userInfo);
    }

    @Override
    public UserInfo selUser(String u_loginId) {
        System.out.println("******-------******");
        UserInfo userInfo = userInfoDao.selUser(u_loginId);
        System.out.println("userInfo = " + userInfo);
        return userInfoDao.selUser(u_loginId);
    }

    @Override
    public List<UserInfo> getAll() {
        return userInfoDao.getAll();
    }

    @Override
    public List<UserInfo> fuzzyquery(String name) {
        return userInfoDao.fuzzyquery(name);
    }
}
