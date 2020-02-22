package com.nf.tang.service;

import com.nf.tang.entity.FriendGroups;

import java.util.List;

public interface FriendGroupsService {
    void addFriendGroups(FriendGroups friendGroups);
    void delFriendGroups(Integer id);
    void updFriendGroups(String name);
    List<FriendGroups> selFriendGroups();
}
