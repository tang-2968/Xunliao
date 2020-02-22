package com.nf.tang.service;

import com.nf.tang.entity.Member;

public interface MemberService {
    void addMember(Member member);
    void delMember(String login);
}
