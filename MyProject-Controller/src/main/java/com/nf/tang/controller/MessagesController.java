package com.nf.tang.controller;

import com.nf.tang.service.MessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/messages")
public class MessagesController {
    @Autowired
    private MessagesService messagesService;

    //事务，添加和查询模拟发消息
    @RequestMapping("/addMessages")
    public String txMessages(String login){
        messagesService.tx(login);
        return "main/main";
    }

    //删除id聊天记录
    @RequestMapping("/delMessages")
    public String delMessages(String id){
        messagesService.delMessages(id);
        return "main/main";
    }
    //删除所有聊天记录
    public String delAllMessages(){
        messagesService.delAllMessages();
        return "main/main";
    }
}
