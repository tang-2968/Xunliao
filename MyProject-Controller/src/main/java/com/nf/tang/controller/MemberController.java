package com.nf.tang.controller;

import com.nf.tang.entity.Member;
import com.nf.tang.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    public void setMemberService(MemberService memberService) {
        this.memberService = memberService;
    }

    //添加成员
    @RequestMapping("/addMember")
    public String  addMember(Member member){
        memberService.addMember(member);
        return "main/main";
    }

    //删除成员
    @RequestMapping("/delMember")
    public String delMember(String login){
        memberService.delMember(login);
        return "main/main";
    }
}
