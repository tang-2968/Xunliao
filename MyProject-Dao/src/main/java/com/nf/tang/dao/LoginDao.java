package com.nf.tang.dao;

import com.nf.tang.entity.Login;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginDao {
    List<Login> getAll(@Param("pageNum")int pageNum,@Param("pageSize")int pageSize);

    void delLogin(String login);
    void addLogin(@Param("account") String account,@Param("password") String password);
    Login selLogin(String login);
}
