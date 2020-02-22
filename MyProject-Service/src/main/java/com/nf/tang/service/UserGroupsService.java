package com.nf.tang.service;

import com.nf.tang.entity.User_Groups;

import java.util.List;

public interface UserGroupsService {
    void addUserGroups(User_Groups user_groups);
    void delUserGroups(Integer ug_id);
    void updUserGroups(User_Groups user_groups);
    User_Groups selUserGroups(Integer ug_id);
    User_Groups selUserGroupsByName(String name);
    List<User_Groups> getAllById();
}
