package com.nf.tang.service.impl;

import com.nf.tang.dao.UserGroupsMSGContentDao;
import com.nf.tang.entity.User_GroupsMSGContent;
import com.nf.tang.service.UserGroupsMSGContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserGroupsMSGContentServiceImpl implements UserGroupsMSGContentService {
    @Autowired
    private UserGroupsMSGContentDao userGroupsMSGContentDao;

    public void setUserGroupsMSGContentDao(UserGroupsMSGContentDao userGroupsMSGContentDao) {
        this.userGroupsMSGContentDao = userGroupsMSGContentDao;
    }
    //事物
    @Transactional
    @Override
    public void tx(User_GroupsMSGContent groupsMSGContent) {
        //先添加至底层数据库在将其查询出来实现消息的发送
        userGroupsMSGContentDao.addMessages(groupsMSGContent);
        userGroupsMSGContentDao.getAll();
    }

    //根据id删除消息记录
    @Override
    public void delMessages(Integer id) {
        userGroupsMSGContentDao.delMessages(id);
    }

    //删除所有消息记录
    @Override
    public void delAllMessages() {
        userGroupsMSGContentDao.delAllMessages();
    }

    //查询所有消息
    @Override
    public List<User_GroupsMSGContent> getAll() {
        return userGroupsMSGContentDao.getAll();
    }
}
