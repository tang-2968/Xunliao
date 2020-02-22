package com.nf.tang.dao;

import com.nf.tang.entity.UserInfo;
import com.nf.tang.entity.User_Groups;

import java.util.List;

public interface UserGroupsDao {
    void addUserGroups(User_Groups user_groups);
    void delUserGroups(Integer ug_id);
    void updUserGroups(User_Groups user_groups);
    User_Groups selUserGroups(Integer ug_id);
    User_Groups selUserGroupsByName(String name);
    List<User_Groups> getAllById();
}
