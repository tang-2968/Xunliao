package com.nf.tang.entity;

import lombok.Data;

import java.util.Date;

//群消息内容表
@Data
public class User_GroupsMSGContent {
    private Integer gm_id;//编号
    private String gm_content;//消息内容
    private String gm_fromId;//发送者
    private String gm_fromUName;//发送者昵称
    private Date gm_createTime;//发送时间
}
