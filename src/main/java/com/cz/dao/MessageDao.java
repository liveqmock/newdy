package com.cz.dao;

import com.cz.model.Message;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessageDao {

    int deleteByPrimaryKey(Integer messageId);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer messageId);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
}