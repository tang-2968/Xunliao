package com.nf.tang.entity;

import lombok.Data;

import java.util.Date;

//账号个人信息类
@Data
public class UserInfo {
    private Integer u_id;//编号
    private String u_loginId;//账号，必填
    private String u_nickName;//昵称，必填
    private String u_passWord;//密码
    private String u_signaTure;//个性签名
    private Byte u_sex;//性别，必填
    private Date u_birthday;//生日
    private String u_telephone;//手机号码
    private String u_name;//真实姓名
    private String u_email;//邮箱
    private String u_intro;//简介
    private Integer u_age;//年龄，必填

    public UserInfo() {
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "u_id=" + u_id +
                ", u_loginId='" + u_loginId + '\'' +
                ", u_nickName='" + u_nickName + '\'' +
                ", u_passWord='" + u_passWord + '\'' +
                ", u_signaTure='" + u_signaTure + '\'' +
                ", u_sex=" + u_sex +
                ", u_birthday=" + u_birthday +
                ", u_telephone='" + u_telephone + '\'' +
                ", u_name='" + u_name + '\'' +
                ", u_email='" + u_email + '\'' +
                ", u_intro='" + u_intro + '\'' +
                ", u_age=" + u_age +
                '}';
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public String getU_loginId() {
        return u_loginId;
    }

    public void setU_loginId(String u_loginId) {
        this.u_loginId = u_loginId;
    }

    public String getU_nickName() {
        return u_nickName;
    }

    public void setU_nickName(String u_nickName) {
        this.u_nickName = u_nickName;
    }

    public String getU_passWord() {
        return u_passWord;
    }

    public void setU_passWord(String u_passWord) {
        this.u_passWord = u_passWord;
    }

    public String getU_signaTure() {
        return u_signaTure;
    }

    public void setU_signaTure(String u_signaTure) {
        this.u_signaTure = u_signaTure;
    }

    public Byte getU_sex() {
        return u_sex;
    }

    public void setU_sex(Byte u_sex) {
        this.u_sex = u_sex;
    }

    public Date getU_birthday() {
        return u_birthday;
    }

    public void setU_birthday(Date u_birthday) {
        this.u_birthday = u_birthday;
    }

    public String getU_telephone() {
        return u_telephone;
    }

    public void setU_telephone(String u_telephone) {
        this.u_telephone = u_telephone;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public String getU_intro() {
        return u_intro;
    }

    public void setU_intro(String u_intro) {
        this.u_intro = u_intro;
    }

    public Integer getU_age() {
        return u_age;
    }

    public void setU_age(Integer u_age) {
        this.u_age = u_age;
    }
}
