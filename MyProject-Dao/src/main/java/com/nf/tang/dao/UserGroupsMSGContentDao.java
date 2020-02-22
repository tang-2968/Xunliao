package com.nf.tang.dao;

import com.nf.tang.entity.User_GroupsMSGContent;

import java.util.List;

public interface UserGroupsMSGContentDao {
    void addMessages(User_GroupsMSGContent groupsMSGContent );
    void delMessages(Integer id);
    void delAllMessages();
    List<User_GroupsMSGContent> getAll();
}
