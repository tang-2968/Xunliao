package com.nf.tang.service;

import com.nf.tang.entity.User_GroupsMSGContent;

import java.util.List;

public interface UserGroupsMSGContentService {
    void tx(User_GroupsMSGContent groupsMSGContent);
    void delMessages(Integer id);
    void delAllMessages();
    List<User_GroupsMSGContent> getAll();
}
