package com.nf.tang.service.impl;

import com.nf.tang.dao.LoginDao;
import com.nf.tang.entity.FriendGroups;
import com.nf.tang.entity.Login;
import com.nf.tang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class  LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;

    public void setLoginDao(LoginDao loginDao) {
        this.loginDao = loginDao;
    }
    @Override
    public List<Login> getAll(int pageNum,int pageSize) {
        return loginDao.getAll(pageNum, pageSize);
    }



    @Override
    public void addLogin(String account, String password) {
        loginDao.addLogin(account,password);
    }

    @Override
    public void delLogin(String login) {
        loginDao.delLogin(login);
    }

    @Override
    public Login selLogin(String login) {
        return loginDao.selLogin(login);
    }

  
}
