package com.nf.tang.controller;

import com.github.pagehelper.PageInfo;
import com.nf.tang.entity.Friends;
import com.nf.tang.service.FriendsService;
import com.nf.tang.service.UserInfoService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/Friends")
public class FriendsController {
    @Autowired
    private FriendsService friendsService;
    @Autowired
    private UserInfoService userInfoServicel;

    public void setFriendsService(FriendsService friendsService) {
        this.friendsService = friendsService;
    }

    public void setUserInfoServicel(UserInfoService userInfoServicel) {
        this.userInfoServicel = userInfoServicel;
    }


    @RequestMapping("/show")
    public String show(){
        return "main/friends";
    }

    //添加好友
    @RequestMapping("/friendsAdd")
    public ModelAndView addFriends(Friends friends){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        friendsService.addFriend(friends);
        return mav;
    }

    //删除好友
    @RequestMapping("/delFriends")
    public ModelAndView delFriends(String login){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        friendsService.delFriend(login);
        return mav;
    }

    //修改好友信息
    @RequestMapping("/updFriends")
    public ModelAndView updFriends(Friends friends){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        friendsService.updFriend(friends);
        return mav;
    }

    //根据id查询好友
    @RequestMapping("/selFriendsById")
    public ModelAndView selFriendsById(String login){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        try{
            friendsService.selFriend(login);
        }catch (Exception e){
            System.out.println(e);
            mav.setViewName("login/index");
            return mav;
        }
        return mav;
    }

    //查询全部好友
    @RequestMapping("/getAll")
    public String getAll(@RequestParam(value = "pageNum",defaultValue = "1",required = false)int pageNum,
                         @RequestParam(value = "pageNum",defaultValue = "3",required = false)int pageSize, Model model){
        List<Friends> list = friendsService.getAll(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(list);
        model.addAttribute("list",pageInfo);
        return "friends/friendGetAll";
    }
}
