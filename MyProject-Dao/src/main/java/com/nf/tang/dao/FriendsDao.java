package com.nf.tang.dao;

import com.nf.tang.entity.Friends;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FriendsDao {
    void addFriend(Friends friends);
    void delFriend(String f_loginId);
    Friends selFriend(String id);
    Friends updFriend(Friends friends);
    List<Friends> getAll(@Param("pageNum")int pageNum,@Param("pageSize")int pageSize);
}
