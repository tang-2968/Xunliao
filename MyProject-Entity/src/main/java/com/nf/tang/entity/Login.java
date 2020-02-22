package com.nf.tang.entity;

import lombok.Data;

import java.util.Date;

//登录类
@Data
public class Login {
    private Integer l_id;//登录编号
    private String l_loginId;//登录的账号
    private String l_password;//密码

    public Login() {
    }

    public Login(String l_loginId, String l_password) {
        this.l_loginId = l_loginId;
        this.l_password = l_password;
    }

    public Login(Integer l_id, String l_loginId, String l_password) {
        this.l_id = l_id;
        this.l_loginId = l_loginId;
        this.l_password = l_password;
    }

    public Integer getL_id() {
        return l_id;
    }

    public void setL_id(Integer l_id) {
        this.l_id = l_id;
    }

    public String getL_loginId() {
        return l_loginId;
    }

    public void setL_loginId(String l_loginId) {
        this.l_loginId = l_loginId;
    }

    public String getL_password() {
        return l_password;
    }

    public void setL_password(String l_password) {
        this.l_password = l_password;
    }
}
