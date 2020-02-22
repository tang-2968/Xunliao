package com.nf.tang.controller;

import com.nf.tang.entity.FriendGroups;
import com.nf.tang.service.FriendGroupsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/friendGroups")
public class FriendGroupsController {
    private FriendGroupsService friendGroupsServicel;

    public void setFriendGroupsServicel(FriendGroupsService friendGroupsServicel) {
        this.friendGroupsServicel = friendGroupsServicel;
    }

    //跳转至组列表
    @RequestMapping("friendGroup")
    public String friendGroup(){
        return "friendGroup/friendGroupAdd";
    }
    //显示组列表
    @RequestMapping("show")
    public String show(){

        return "friendGroup/friendGroupShow";
    }
    //添加好友列表
    @RequestMapping("/addFriendGroups")
    public String addFriendGroups(FriendGroups friendGroups){
        friendGroupsServicel.addFriendGroups(friendGroups);
        return "main/main";
    }
    //删除好友列表
    @RequestMapping("delFriendGroups")
    public String delFriendGroups(Integer id){

        friendGroupsServicel.delFriendGroups(id);
        return "main";
    }

    //修改列表信息
    @RequestMapping("updFriendGroups")
    public String delFriendGroups(String name){
        friendGroupsServicel.updFriendGroups(name);
        return "main";
    }

}
