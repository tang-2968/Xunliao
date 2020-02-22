package com.nf.tang.service;

import com.nf.tang.entity.Messages;

import java.util.List;

public interface MessagesService {

    void delMessages(String id);

    void tx(String id);

    void delAllMessages();
}
