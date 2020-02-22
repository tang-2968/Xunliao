package com.nf.tang.entity;

import lombok.Data;

import java.util.Date;
import java.util.List;

//用户群类
@Data
public class User_Groups {
    private Integer ug_id;//编号
    private String ug_name;//群名称
    private Date ug_createTime;//创建时间
    private String ug_iCon;//群图标
    private String ug_notice;//群公告
    private String ug_intro;//群简介
    private String ug_owner;//拥有者、群主
    private List<Member> members;//群内成员
}
