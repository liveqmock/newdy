package com.cz.dao;

import com.cz.model.Message;

import java.util.List;

import com.cz.utils.PageUtil;
import org.apache.ibatis.annotations.Param;

public interface MessageDao {

    int addMessage(Message message);

    int deleteMessage(String messageId);

    int updateMessage(Message message);

    Message getMessageById(String messageId);

    PageUtil<Message> getAllMessagePageList(PageUtil<Message> pageUtil);
}