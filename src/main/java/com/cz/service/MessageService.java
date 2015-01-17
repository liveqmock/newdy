package com.cz.service;

import com.cz.model.Message;
import com.cz.utils.PageUtil;

/**
 * Created by ChangYY
 * 2015/1/17
 * 20:06
 * TO DO What
 */
public interface MessageService {

    int addMessage(Message message);

    int deleteMessage(String messageId);

    int updateMessage(Message message);

    Message getMessageById(String messageId);

    PageUtil<Message> getAllMessagePageList(PageUtil<Message> pageUtil);
}
