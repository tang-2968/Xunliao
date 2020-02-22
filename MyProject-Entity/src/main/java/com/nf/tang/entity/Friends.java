package com.nf.tang.entity;

import lombok.Data;

//好友类
@Data
public class Friends {
    private Integer f_id;//编号
    private String f_loginId;//账号
    private Integer f_friendGroupsId;//好友所属分组id
    private String f_name;//备注昵称
}
