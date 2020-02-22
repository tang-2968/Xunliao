package com.nf.tang.controller;

import com.nf.tang.entity.User_Groups;
import com.nf.tang.service.UserGroupsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/userGroups")
public class UserGroupsController {
    @Autowired
    private UserGroupsService userGroupsService;

    public void setUserGroupsService(UserGroupsService userGroupsService) {
        this.userGroupsService = userGroupsService;
    }

    //创建群
    @RequestMapping("/addUserGroups")
    public String addUserGroups(User_Groups user_groups){
        userGroupsService.addUserGroups(user_groups);
        return "main/main";
    }

    //注销群
    @RequestMapping("/delUserGroups")
    public String delUserGroups(Integer id){
        userGroupsService.delUserGroups(id);
        return "main/main";
    }

    //修改群信息
    @RequestMapping("/updUserGroups")
    public String updUserGroups(User_Groups user_groups){
        userGroupsService.updUserGroups(user_groups);
        return "main/main";
    }

    //根据id查询群
    @RequestMapping("/selUserGroups")
    public String selUserGroups(Integer id){
        userGroupsService.selUserGroups(id);
        return "main/main";
    }

    //根据名字查询群
    @RequestMapping("/selUserGroupsByName")
    public ModelAndView selUserGroupsByName(String name){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        userGroupsService.selUserGroupsByName(name);
        return mav;
    }

    public String odkf(){
        return "";
    }
    //查询自己所在的所有群
    @RequestMapping("/getAllById")
    public ModelAndView getAllById(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        userGroupsService.getAllById();
        return mav;
    }

}
