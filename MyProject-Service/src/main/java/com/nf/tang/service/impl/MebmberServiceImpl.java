package com.nf.tang.service.impl;

import com.nf.tang.entity.Member;
import com.nf.tang.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MebmberServiceImpl implements MemberService {
    @Autowired
    private MemberService mebmberService;

    public void setMebmberService(MemberService mebmberService) {
        this.mebmberService = mebmberService;
    }

    @Override
    public void addMember(Member member) {
        mebmberService.addMember(member);
    }

    @Override
    public void delMember(String login) {
        mebmberService.delMember(login);
    }
}
