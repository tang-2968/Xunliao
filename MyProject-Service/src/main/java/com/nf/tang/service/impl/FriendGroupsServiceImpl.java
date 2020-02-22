package com.nf.tang.service.impl;

import com.nf.tang.entity.FriendGroups;
import com.nf.tang.service.FriendGroupsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FriendGroupsServiceImpl implements FriendGroupsService {
    @Autowired
    private FriendGroupsService friendGroupsService;

    public void setFriendGroupsService(FriendGroupsService friendGroupsService) {
        this.friendGroupsService = friendGroupsService;
    }

    @Override
    public void addFriendGroups(FriendGroups friendGroups) {
        friendGroupsService.addFriendGroups(friendGroups);
    }

    @Override
    public void delFriendGroups(Integer id) {
        friendGroupsService.delFriendGroups(id);
    }

    @Override
    public void updFriendGroups(String name) {
        friendGroupsService.updFriendGroups(name);
    }

    @Override
    public List<FriendGroups> selFriendGroups() {
        return friendGroupsService.selFriendGroups();
    }
}
