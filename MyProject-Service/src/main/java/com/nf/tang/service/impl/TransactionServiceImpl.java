package com.nf.tang.service.impl;

import com.nf.tang.entity.Login;
import com.nf.tang.entity.UserInfo;
import com.nf.tang.service.LoginService;
import com.nf.tang.service.TransactionService;
import com.nf.tang.service.UserInfoService;
import jdk.internal.org.objectweb.asm.util.TraceAnnotationVisitor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TransactionServiceImpl implements TransactionService {
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private LoginService loginService;

    public void setUserInfoService(UserInfoService userInfoService) {
        this.userInfoService = userInfoService;
    }

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @Transactional
    @Override
    public void tx(UserInfo userInfo) {
        loginService.addLogin(userInfo.getU_loginId(),userInfo.getU_passWord());
    }

}
