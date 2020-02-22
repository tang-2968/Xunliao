package com.nf.tang.entity;

import lombok.Data;

import java.util.Date;

//消息管理类
@Data
public class Messages {
    private Integer m_id;//消息id
    private String m_postMessages;//消息内容
    private Byte m_status;//接受状态
    private Date m_time;//发送时间
    private String m_dispatcher;//发送者
    private String m_receiver;//接受者
}
