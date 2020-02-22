package com.nf.tang.service.impl;

import com.nf.tang.dao.FriendsDao;
import com.nf.tang.entity.Friends;
import com.nf.tang.service.FriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FriendsServiceImpl implements FriendsService {
    @Autowired
    private FriendsDao friendsDao;

    public void setFriendsDao(FriendsDao friendsDao) {
        this.friendsDao = friendsDao;
    }

    @Override
    public void addFriend(Friends friends) {
        friendsDao.addFriend(friends);
    }

    @Override
    public void delFriend(String f_loginId) {
        friendsDao.delFriend(f_loginId);
    }

    @Override
    public Friends selFriend(String id) {
        return friendsDao.selFriend(id);
    }

    @Override
    public Friends updFriend(Friends friends) {
        return friendsDao.updFriend(friends);
    }

    @Override
    public List<Friends> getAll(int pageNum,int pageSize) {
        return friendsDao.getAll(pageNum, pageSize);
    }
}
