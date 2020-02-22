package com.nf.tang.service;

import com.nf.tang.entity.Friends;

import java.util.List;

public interface FriendsService {
    void addFriend(Friends friends);
    void delFriend(String f_loginId);
    Friends selFriend(String id);
    Friends updFriend(Friends friends);
    List<Friends> getAll(int pageNum,int pageSize);
}
