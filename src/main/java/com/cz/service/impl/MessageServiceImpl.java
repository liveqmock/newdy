package com.cz.service.impl;

import com.cz.dao.MessageDao;
import com.cz.model.Message;
import com.cz.service.MessageService;
import com.cz.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by ChangYY
 * 2015/1/17
 * 21:25
 * TO DO What
 */
public class MessageServiceImpl implements MessageService {

    @Autowired
    MessageDao messageDao;

    @Override
    public int addMessage(Message message) {
        return messageDao.addMessage(message);
    }

    @Override
    public int deleteMessage(String messageId) {
        return messageDao.deleteMessage(messageId);
    }

    @Override
    public int updateMessage(Message message) {
        return messageDao.updateMessage(message);
    }

    @Override
    public Message getMessageById(String messageId) {
        return messageDao.getMessageById(messageId);
    }

    @Override
    public PageUtil<Message> getAllMessagePageList(PageUtil<Message> pageUtil) {
        return messageDao.getAllMessagePageList(pageUtil);
    }
}
