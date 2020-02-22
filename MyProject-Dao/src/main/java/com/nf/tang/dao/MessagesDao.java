package com.nf.tang.dao;

import com.nf.tang.entity.Messages;

import java.util.List;

public interface MessagesDao {
    void addMessages();
    void delMessages(String id);
    List<Messages> selMessages(String dispatcher);
    void delAllMessages();
}
