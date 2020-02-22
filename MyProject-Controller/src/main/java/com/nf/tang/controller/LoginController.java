package com.nf.tang.controller;

import com.github.pagehelper.PageInfo;
import com.nf.tang.entity.Login;
import com.nf.tang.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private LoginService loginService;

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    @RequestMapping("/index")
    public String index(){
        return "view/login";
    }
    @RequestMapping("/index2")
    public String index2(){
        return "login/register";
    }
    //登录
    @RequestMapping("/login")
    public String login(String login,String password ){
        Login login1 = loginService.selLogin(login);
        if(login1.getL_loginId().equals(login)&&login1.getL_password().equals(password)){
           return "main/main";
        }
        return "login/index";
    }

    //注册
    @RequestMapping("/register")
    public String addLogin(String username,String password){
        System.out.println(username);
        Login login=loginService.selLogin(username);
        System.out.println("*****");
        //System.out.println("login = " + login2.getL_loginId());
        System.out.println(login.getL_loginId());
        if(username==login.getL_loginId()){
            return "login/register";
        }
        loginService.addLogin(username,password);
        return "login/index";
    }

    //根据id查询
    @RequestMapping("/selLogin")
    public String selLogin(String login){
//        //Login login1 = loginService.selLogin(login,);
//        if(login1==null){
//            return "login/unknown";
//        }
//            return "login/show";
        return "main/main";
    }

    @RequestMapping("getAll")
    public String getAll(@RequestParam(value = "pageNum",defaultValue = "1",required = false)int pageNum,
                         @RequestParam(value = "pageNum",defaultValue = "3",required = false)int pageSize, Model model){
        List<Login> result = loginService.getAll(pageNum, pageSize);
        PageInfo pageInfo = new PageInfo(result);
        model.addAttribute("list",pageInfo);
        return "login/show";
    }

    //模糊查询
    @RequestMapping("/fuzzyquery")
    public String fuzzyquery(String name,Model model){

        return "userInfo/userInfoShow";
    }

}
