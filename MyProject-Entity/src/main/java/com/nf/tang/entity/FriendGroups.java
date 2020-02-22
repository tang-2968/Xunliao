package com.nf.tang.entity;


import lombok.Data;

import java.util.List;

//好友分组类
@Data
public class FriendGroups {
    private Integer fg_id;//分组编号
    private String fg_name;//分组名称
    private List<UserInfo> userInfos;//组内好友
}
