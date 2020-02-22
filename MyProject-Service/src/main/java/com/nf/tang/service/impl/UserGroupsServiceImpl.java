package com.nf.tang.service.impl;

import com.nf.tang.dao.UserGroupsDao;
import com.nf.tang.entity.User_Groups;
import com.nf.tang.service.UserGroupsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserGroupsServiceImpl implements UserGroupsService {
    @Autowired
    private UserGroupsDao userGroupsDao;

    public void setUserGroupsDao(UserGroupsDao userGroupsDao) {
        this.userGroupsDao = userGroupsDao;
    }
    //添加群
    @Override
    public void addUserGroups(User_Groups user_groups) {

    }
    //删除群
    @Override
    public void delUserGroups(Integer ug_id) {

    }
    //修改群
    @Override
    public void updUserGroups(User_Groups user_groups) {

    }
    //根据id查询群
    @Override
    public User_Groups selUserGroups(Integer ug_id) {
        return null;
    }

    @Override
    public User_Groups selUserGroupsByName(String name) {
        return userGroupsDao.selUserGroupsByName(name);
    }


    //根据id查询自己所加入的所有群
    @Override
    public List<User_Groups> getAllById() {
        return userGroupsDao.getAllById();
    }
}
