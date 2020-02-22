package com.nf.tang.dao;

import com.nf.tang.entity.FriendGroups;

import java.util.List;

public interface FriendGroupsDao {
    void addFriendGroups(FriendGroups friendGroups);
    void delFriendGroups(Integer id);
    void updFriendGroups(String name);
    List<FriendGroups> selFriendGroups();
}
