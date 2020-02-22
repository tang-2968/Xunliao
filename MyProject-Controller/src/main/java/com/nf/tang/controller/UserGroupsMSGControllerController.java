package com.nf.tang.controller;

import com.nf.tang.entity.User_GroupsMSGContent;
import com.nf.tang.service.UserGroupsMSGContentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/userGroupsMSGController")
public class UserGroupsMSGControllerController {
    private UserGroupsMSGContentService userGroupsMSGContentService;

    public void setUserGroupsMSGContentService(UserGroupsMSGContentService userGroupsMSGContentService) {
        this.userGroupsMSGContentService = userGroupsMSGContentService;
    }

    //发送消息
    @RequestMapping("/addMessages")
    public ModelAndView addMessages(User_GroupsMSGContent groupsMSGContent){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        userGroupsMSGContentService.tx(groupsMSGContent);
        return mav;
    }

    //根据id删除群消息记录
    @RequestMapping("/delMessages")
    public ModelAndView delMessages(Integer id){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        userGroupsMSGContentService.delMessages(id);
        return mav;
    }

    //删除所有群消息
    @RequestMapping("/delAllMessages")
    public ModelAndView delAllMessages(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mian");
        userGroupsMSGContentService.delAllMessages();
        return mav;
    }
}
