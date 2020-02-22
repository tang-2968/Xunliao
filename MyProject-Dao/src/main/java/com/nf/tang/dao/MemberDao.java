package com.nf.tang.dao;

import com.nf.tang.entity.Member;

public interface MemberDao {
    void addMember(Member member);
    void delMember(String login);
}
