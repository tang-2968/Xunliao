package com.nf.tang.service.impl;

import com.nf.tang.dao.MessagesDao;
import com.nf.tang.entity.Messages;
import com.nf.tang.service.MessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MessagesServiceImpl implements MessagesService {
    @Autowired
    private MessagesDao messagesDao;

    public void setMessagesDao(MessagesDao messagesDao) {
        this.messagesDao = messagesDao;
    }

    @Override
    public void delMessages(String id) {
        messagesDao.delMessages(id);
    }

    //事物，添加和查询同时进行，在同时将其查询实现信息的发送
    @Transactional
    @Override
    public void tx(String id) {
        messagesDao.addMessages();
        messagesDao.selMessages(id);
    }

    //删除所有聊天记录
    @Override
    public void delAllMessages() {
        messagesDao.delAllMessages();
    }


}
