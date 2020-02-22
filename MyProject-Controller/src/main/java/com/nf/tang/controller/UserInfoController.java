package com.nf.tang.controller;

import com.nf.tang.entity.UserInfo;
import com.nf.tang.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.nf.tang.controller.instrument.*;

import java.util.List;

@Controller
@RequestMapping("/userInfo")
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;

    public void setUserInfoService(UserInfoService userInfoService) {
        this.userInfoService = userInfoService;
    }

    //跳转添加页面
    @RequestMapping("/userInfoshow")
    public String userInfoShow(){
        return "userInfo/userInfoAdd";
    }
    //跳转模糊查询页面
    @RequestMapping("/userInfofuzzy")
    public String fuzzy(){
        return "userInfo/fuzzyquery";
    }
    //用于完善用户信息和注册
    @RequestMapping("/addUserInfo")
    public String addUserInfo(UserInfo userInfo){
        System.out.println("******");
        System.out.println("userInfo = " + userInfo);
        System.out.println("******");
        userInfoService.addUserInfo(userInfo);
        return "main/main";
    }

    //注销账号
    @RequestMapping("/delUserInfo")
    public String delUserInfo(String id){
        userInfoService.delUserInfo(id);
        return "main/main";
    }

    //修改账号信息
    @RequestMapping("/updUserInfo")
    public ModelAndView updUserInfo(UserInfo userInfo){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/main");
        userInfoService.updUserInfo(userInfo);
        return mav;
    }

    //查看账号信息
    @RequestMapping("/selUserInfo")
    public String selUser(Model model){
        UserInfo userInfo = userInfoService.selUser("111111");
        model.addAttribute("userInfo",userInfo);
        return "userInfo/userInfoShow";
    }

    //查询全部账号信息
    @RequestMapping("/getAll")
    public String getAll(){
        userInfoService.getAll();
        return "main/main";
    }

    //模糊查询
    @RequestMapping("/fuzzyQuery")
    public String fuzzyQuery(String name,Model model){
        System.out.println("*********************");
        System.out.println(name);
        System.out.println("*********************");
        if(Instrument.isNumeric(name)==true){
            UserInfo userInfos = userInfoService.selUser(name);
            model.addAttribute("userInfo",userInfos);
            return "userInfo/show";
        }
        try {
            List<UserInfo> userInfos = userInfoService.fuzzyquery(name);
            model.addAttribute("userInfo", userInfos);
        }catch (Exception e){
            System.out.println(e);
        }
        return "userInfo/show";
    }

}
