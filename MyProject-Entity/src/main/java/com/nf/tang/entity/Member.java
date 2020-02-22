package com.nf.tang.entity;

import lombok.Data;

import java.util.List;

//成员类
@Data
public class Member {
    private Integer m_id;//编号
    private List<String> u_loginId;//群成员账号
    private String m_remark;//备注
}
